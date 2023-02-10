export default function ({ attr, rule, def }) {
  if (attr.mastery > 160) {
    return rule(‘久岐忍-超绽’ , {hp: 100, atk: 50, def: 0, cpct: 100, cdmg: 100, mastery: 100, dmg: 100, phy: 0, recharge: 55, heal: 100})
  }
  return def({hp: 100, atk: 50, def: 0, cpct: 100, cdmg: 100, mastery: 75, dmg: 100, phy: 0, recharge: 55, heal: 100 })
}
