# LZFoundation

Extensions of Native Foundation 

# How to install

### SPM

- Package.swift 的 dependencies 增加

```
.package(name: "LZFoundation", url: "https://github.com/coollazy/LZFoundation.git", .upToNextMajor(from: "1.0.1")),
```

- target 的 dependencies 增加

```
.product(name: "LZFoundation", package: "LZFoundation"),
```

# How to use

