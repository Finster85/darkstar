-----------------------------------
-- Area: Escha_ZiTah
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[dsp.zone.ESCHA_ZITAH] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED = 6381, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6387, -- Obtained: <item>.
        GIL_OBTAINED            = 6388, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6390, -- Obtained key item: <keyitem>.
        ITEMS_OBTAINED          = 6396, -- You obtain <number> <item>!
    },
    mob =
    {
    },
    npc =
    {
    },
}

return zones[dsp.zone.ESCHA_ZITAH]