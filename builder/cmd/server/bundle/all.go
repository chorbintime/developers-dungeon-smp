package bundle

import (
	"github.com/chorbintime/developers-dungeon-smp/builder/internal/server"
	"github.com/spf13/cobra"
)

var AllCommand = &cobra.Command{
	Use:          "all",
	Aliases:      []string{"a"},
	Short:        "Create all server bundles.",
	Long:         `Create all server bundles.`,
	SilenceUsage: true,

	RunE: func(cmd *cobra.Command, args []string) error {
		return server.Bundle()
	},
}
