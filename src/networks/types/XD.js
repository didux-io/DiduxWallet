import tokens from '@/tokens/tokens-xd.json';
import contracts from '@/contracts/contract-abi-eth.json';
import xd from '@/assets/images/networks/xd.svg';
import { EthAbi } from '../ensAbis';

export default {
  name: 'XD',
  name_long: 'Didux',
  homePage: 'https://didux.io',
  blockExplorerTX: 'https://explorer.didux.network/tx/[[txHash]]',
  blockExplorerAddr: 'https://explorer.didux.network/addr/[[address]]',
  chainID: 20200101,
  tokens: tokens,
  contracts: contracts,
  ensResolver: '0x314159265dd8dbb310642f98f50c066173c1259b',
  ensAbi: EthAbi,
  icon: xd
};
