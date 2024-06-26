package command

import (
	"github.com/matevzkeber/ma-shell/internal/env"
)

var (
	Commands = []Command{
		CdCommand{},
		EchoCommand{},
		ExitCommand{},
		PWDCommand{},
		ExportCommand{},
		AliasCommand{},
        HelpCommand{},
	}
)

type Command interface {
	Name() string
    Description() string
    Usage() string
	Run([]string, env.ShellEnvironment) error
}
