package all

import (
	"github.com/chorbintime/developers-dungeon-smp/builder/internal/client"
	"github.com/chorbintime/developers-dungeon-smp/builder/internal/config"
	"github.com/chorbintime/developers-dungeon-smp/builder/internal/server"
)

func Clean() error {
	err := client.Clean()

	if err != nil {
		return err
	}

	err = server.Clean()

	if err != nil {
		return err
	}

	return nil
}

func Bundle() error {
	err := client.Bundle()

	if err != nil {
		return err
	}

	cfg, err := config.GetConfig()

	if err != nil {
		return err
	}

	if cfg.Server.Enabled {
		err = server.Bundle()

		if err != nil {
			return err
		}
	}

	return nil
}
