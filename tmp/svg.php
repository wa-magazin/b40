<?php

$svgFile = '3.svg'; // путь к файлу SVG

if (!file_exists($svgFile)) {
    exit("Файл не найден: $svgFile\n");
}

$svg = file_get_contents($svgFile);

// Преобразуем SVG в XML
$xml = simplexml_load_string($svg);

// Регистрируем namespace, если он есть (обычно SVG имеет его)
$namespaces = $xml->getNamespaces(true);
if (isset($namespaces[''])) {
    $xml->registerXPathNamespace('svg', $namespaces['']);
    $g_elements = $xml->xpath('//svg:g[contains(@class, "seatItem")]');
} else {
    $g_elements = $xml->xpath('//g[contains(@class, "seatItem")]');
}

$seen = [];
$duplicates = [];

foreach ($g_elements as $g) {
    $attributes = $g->attributes();

    $seat = (string) $attributes['data-seat'];
    $row = (string) $attributes['data-row'];
    $ext = (string) $attributes['data-ext'];

    $key = "$seat|$row|$ext";

    if (isset($seen[$key])) {
        $duplicates[] = $key;
    } else {
        $seen[$key] = true;
    }
}

// Вывод результата
if ($duplicates) {
    echo "Найдены дубликаты:\n";
    foreach ($duplicates as $dup) {
        echo " - $dup\n";
    }
} else {
    echo "Все seatItem уникальны.\n";
}
