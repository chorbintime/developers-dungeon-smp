package client

import (
	"fmt"
	"os"
	"path/filepath"

	"github.com/chorbintime/developers-dungeon-smp/builder/internal/helpers"
)

var (
	namedGlobs = []string{
		"%s v*+*.zip",
		"%s v*+*.mrpack",
	}
)

func Clean() error {
	pack, _, err := helpers.GetPack()

	if err != nil {
		return err
	}

	for _, glob := range namedGlobs {
		matches, err := filepath.Glob(fmt.Sprintf(glob, pack.Name))

		if err != nil {
			return err
		}

		for _, match := range matches {
			fmt.Println("Removing " + match)

			err = os.Remove(match)

			if err != nil {
				return err
			}
		}
	}

	return nil
}
