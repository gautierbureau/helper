``` bash
$> xdg-open --help
$> xdg-open test.pdf
$> xdg-mime --help
$> xdg-mime query default application/pdf
$> basename $(xdg-mime query default application/pdf) .desktop
$> which $(basename $(xdg-mime query default application/pdf) .desktop)
```
