# man configuration.nix or on https://nixos.org/nixos/options.html).

{ config, pkgs, ... }:

{
	imports =
		[
			./hardware-configuration.nix
		];

	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	networking.hostName = "nixos";
	networking.networkmanager.enable = true;

	time.timeZone = "Australia/Melbourne";
	i18n.defaultLocale = "en_AU.UTF-8";
	i18n.extraLocaleSettings = {
		LC_ADDRESS = "en_AU.UTF-8";
		LC_IDENTIFICATION = "en_AU.UTF-8";
		LC_MEASUREMENT = "en_AU.UTF-8";
		LC_MONETARY = "en_AU.UTF-8";
		LC_NAME = "en_AU.UTF-8";
		LC_NUMERIC = "en_AU.UTF-8";
		LC_PAPER = "en_AU.UTF-8";
		LC_TELEPHONE = "en_AU.UTF-8";
		LC_TIME = "en_AU.UTF-8";
	};

	services.xserver.enable = true;
	services.xserver.xkb = {
		layout = "au";
		variant = "";
	};

	services.printing.enable = true;

	hardware.pulseaudio.enable = false;
	security.rtkit.enable = true;
	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
	};

	services.libinput.enable = true;

	users.users.bain = {
		isNormalUser = true;
		description = "bain";
		extraGroups = [ "networkmanager" "wheel" ];
		packages = with pkgs; [
			git
			zig
			qemu
			nasm
			felix-fm
			chafa
		];
	};

	environment.systemPackages = with pkgs; [
		ly
		hyprland
		hyprpaper
		mako
		chromium
		ghostty
		neovim
	];

	services.displayManager.ly.enable = true;
	programs.hyprland.enable = true;

	system.stateVersion = "24.11";
}
