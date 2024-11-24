local Translations = {
    error = {
        something_went_wrong = 'Quelque chose s\'est mal passé !',
        you_dont_have_any_pelts_to_sell = "Vous n'avez aucune peau à vendre !",
        you_dont_have_any_feathers_to_sell = "Vous n'avez aucune plume à vendre !",
        you_dont_have_any_carcass_to_sell = "Vous n'avez aucun reste d'animal à vendre !"
    },
    success = {
        you_have_sold_all_your_pelts_for = 'Vous avez vendu toutes vos peaux pour $',
        you_have_sold_all_your_feathers_for = 'Vous avez vendu toutes vos plumes pour $',
        you_have_sold_all_your_carcass_for = 'Vous avez vendu tous vos restes d\'animal pour $'
    },
    primary = {
        stored = ' Stocké',
    },
    menu = {
        open = 'Ouvrir ',
        sell_stored_pelts = 'Vendre des peaux',
        sell_stored_feathers = 'Vendre des plumes',
        sell_stored_carcass = 'Vendre des restes d\'animaux',
        trapper_menu = 'Menu du trappeur',
        open_trapper_shop = 'Ouvrir la boutique du trappeur',
        close_menu = 'Fermer le menu',
    },
    commands = {
        var = 'texte ici',
    },
    progressbar = {
        checking_pelts = 'Vérification des peaux',
        checking_feathers = 'Vérification des plumes',
        checking_carcass = 'Vérification des restes d\'animaux',
    },
    text = {
        buy_items_from_the_trapper = 'Acheter des articles chez le trappeur',
        buy_items_from_the_fish_vendor = 'Acheter des articles chez le vendeur de poissons',
        sell_store_pelts = 'Vendre des articles pour la boutique de peaux',
        sell_store_feathers = 'Vendre des articles pour la boutique de plumes',
        sell_store_carcass = 'Vendre des articles pour la boutique de restes d\'animaux',
        trapper_shop =  'Boutique du trappeur',
    }
}

if GetConvar('rsg_locale', 'en') == 'fr' then
    Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true,
    fallbackLang = Lang,
  })
end
