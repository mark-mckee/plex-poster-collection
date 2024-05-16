$se=@()
$se_replacement=@()

$titles=Get-ChildItem -Path "Title Cards"

foreach ($title in $titles) {
    $info = $title.name.substring($title.name.indexof('-') + 1, 7).Trim()

    #$se += $info

    foreach ($name in $info) {
        $season=$name.substring(1,2)
        $episode=$name.substring(4,2)

        switch ($season) {
            "01" {$season="1"}
            "02" {$season="2"}
            "03" {$season="3"}
            "04" {$season="4"}
            "05" {$season="5"}
            "06" {$season="6"}
            "07" {$season="7"}
            "08" {$season="8"}
            "09" {$season="9"}
        }

        switch ($episode) {
            "01" {$episode="1"}
            "02" {$episode="2"}
            "03" {$episode="3"}
            "04" {$episode="4"}
            "05" {$episode="5"}
            "06" {$episode="6"}
            "07" {$episode="7"}
            "08" {$episode="8"}
            "09" {$episode="9"}
        }

        #$title.name

        #"s" + $season + "e" + $episode
    }
    $new_name = "s$season" + "e$episode" + ".jpg"

    $currentTitle = $title.name
    Rename-Item -Path "Title Cards\$currentTitle" -NewName $new_name
}



