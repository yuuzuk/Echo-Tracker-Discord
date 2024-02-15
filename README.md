# Echo Tracker

A Ruby API capable of retrieving information about users on Discord.

## Features

This API is capable of retrieving information that regular Discord bots are **unable** to access.

List of information returned by the API:

- ID
- List of badges
- Username
- User biography
- Nitro Type
- Created Timestamp
- Discriminator (for legacy accounts)
- Connections
- Premium Type
- Boosting Guild Since
- Profile Themes
- User Profile
- Pronouns
- Guild Badges
- Legacy username
  <details>
      <summary>Sample API response</summary>

      ```json
      {
      "id": "1044550391779577907",
      "badges": [
          {
          "id": "hypesquad_house_1",
          "description": "Bravery do HypeSquad",
          "icon": "8a88d63823d8a71cd5e390baa45efa02",
          "link": "https://discord.com/settings/hypesquad-online"
          },
          {
          "id": "premium",
          "description": "Assinante desde 25 de nov. de 2022",
          "icon": "2ba85e8026a8614b640c2837bcdfe21b",
          "link": "https://discord.com/settings/premium"
          },
          {
          "id": "guild_booster_lvl6",
          "description": "Impulsionando o servidor desde 15 de fev. de 2023",
          "icon": "991c9f39ee33d7537d9f408c3e53141e",
          "link": "https://discord.com/settings/premium"
          },
          {
          "id": "legacy_username",
          "description": "Originalmente yuzuk.#1000",
          "icon": "6de6d34650760ba5551a79732e98ed60"
          }
      ],
      "username": null,
      "bio": "Unable to obtain user bio.",
      "nitroType": null,
      "createdTimestamp": null,
      "discriminator": null,
      "connected_accounts": [
          {
          "type": "domain",
          "id": "yuzuk.xyz",
          "name": "yuzuk.xyz",
          "verified": true
          },
          {
          "type": "github",
          "id": "75757165",
          "name": "yuuzuk",
          "verified": true
          }
      ],
      "premium_type": 2,
      "premium_since": "2022-11-25T04:42:53.118992+00:00",
      "premium_guild_since": "2023-02-15T08:23:27.393000+00:00",
      "profile_themes_experiment_bucket": 4,
      "mutual_guilds": [
          {
          "id": "1160619243507810304",
          "nick": null
          },
          {
          "id": "584490943034425391",
          "nick": null
          },
          {
          "id": "992619779091341424",
          "nick": null
          },
          {
          "id": "898377990906454016",
          "nick": null
          }
      ],
      "user_profile": {
          "bio": "> **Vendedora** com mais de **300** avaliações!\n\n<:Link:1172722655523258502> **Perfil** da **GGMax**: https://ggmax.com.br/perfil/WyxStore\nMelhores preços!",
          "accent_color": 1973272,
          "pronouns": "ela/dela",
          "profile_effect": null,
          "banner": null,
          "theme_colors": [13934730, 13934730],
          "popout_animation_particle_type": null,
          "emoji": null
      },
      "guild_badges": [],
      "legacy_username": "yuzuk.#1000"
      }
      ```

  </details>

## Setup

<details>
<summary>Prerequisites</summary>
[Ruby](https://www.ruby-lang.org/pt/)
</details>
Install the dependencies using
`$ bundle`

Rename the `.env.example` to `.env`
Put your discord account token in `.env` file

**WARNING** We will not be held responsible for any account-related bans. Use your token at your own risk.

## Running the project

You can run the project using
`$ ruby app.rb`

If you have executed the configuration correctly, a message should be displayed on the console upon initialization.
`[API] Running on port 3000.`

### Requesting the API

`/users/:id` - Retrieves the user information

Suggestions, bugs, or just need support? Please open an issue, and we will be happy to assist you!
