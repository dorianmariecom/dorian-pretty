# `dorian-pretty`

Format tracked Ruby files in the current git repository.

## Install

```bash
gem install dorian-pretty
```

Also included in the aggregate gem:

```bash
gem install dorian
```

## Usage

```bash
pretty
```

Run `pretty -h` for generated option details and `pretty -v` for the installed version.

## Notes

- Uses git to find tracked Ruby-like files and Syntax Tree to format them in place. Prints changed file paths.

## Examples

### Format the current repo

```bash
pretty
```
