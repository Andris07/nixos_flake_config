{
  users.users.andris =
  {
    isNormalUser = true;

    hashedPasswordFile = "/var/lib/secrets/andris-password";
    
    extraGroups =
    [
      "wheel"
      "networkmanager"
      "video"
    ];
  };
}