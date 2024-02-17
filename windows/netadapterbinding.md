### List status of ZScaler
```
Get-NetAdapterBinding -AllBindings -ComponentID ZS_ZAPPRD
```

### Disable ZScaler
```
Get-NetAdapterBinding -AllBindings -ComponentID ZS_ZAPPRD | Disable-NetAdapterBinding
```

### Enable ZScaler
```
Get-NetAdapterBinding -AllBindings -ComponentID ZS_ZAPPRD | Enable-NetAdapterBinding
```

