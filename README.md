# device-info

muestra el idioma, pais y moneda del dispositivo android o iphone

## Install

To use npm

```bash
npm install device-info
````

To use yarn

```bash
yarn add device-info
```

Sync native files

```bash
npx cap sync
```

## API

<docgen-index>

* [`getInfo()`](#getinfo)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### getInfo()

```typescript
getInfo() => Promise<{ language: string; country: string; currency: string; identifier: string; }>
```

**Returns:** <code>Promise&lt;{ language: string; country: string; currency: string; identifier: string; }&gt;</code>

--------------------

</docgen-api>
