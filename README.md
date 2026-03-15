# lazyvol

The lazier way to manage Docker volumes.

lazyvol is a simple CLI tool to help you manage Docker volumes without the hassle of remembering complex commands. Whether you need to list, inspect, backup, or clean up volumes, lazyvol makes it straightforward.

## Features

- [ ] List all Docker volumes
- [ ] Inspect volume details
- [ ] Backup volumes to tar archives
- [ ] Restore volumes from backups
- [ ] Clean up unused volumes
- [ ] Interactive volume selection
- [ ] Cross-platform support (Linux, macOS, Windows)

## Installation

### From source

```bash
git clone https://github.com/alebak/lazyvol.git
cd lazyvol
cargo install --path .
```

### Using cargo

```bash
cargo install lazyvol
```

## Usage

### List all volumes

```bash
lazyvol list
```

### Inspect a volume

```bash
lazyvol inspect <volume-name>
```

### Backup a volume

```bash
lazyvol backup <volume-name> -o backup.tar
```

### Restore from backup

```bash
lazyvol restore backup.tar
```

### Clean up unused volumes

```bash
lazyvol cleanup
```

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
