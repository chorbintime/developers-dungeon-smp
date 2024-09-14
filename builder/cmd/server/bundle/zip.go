package bundle

import (
	"github.com/chorbintime/developers-dungeon-smp/builder/internal/server"
	"github.com/spf13/cobra"
)

var ZipCommand = &cobra.Command{
	Use:          "zip",
	Aliases:      []string{"z"},
	Short:        "Create the server Zip bundle.",
	Long:         `Create the server Zip bundle.`,
	SilenceUsage: true,

	RunE: func(cmd *cobra.Command, args []string) error {
		return server.Zip()
	},
}
