import { Box, Palette, PaletteColor } from '@mui/material';
import { FC, useContext } from 'react';

import { Text } from 'components';
import { ThemeContext } from 'context';

interface Props {
  priority: 'low' | 'normal' | 'high' | 'critical' | string;
}

const colorMap: { [key: string]: keyof Palette } = {
  low: 'success',
  warning: 'warning',
  info: 'info',
  high: 'error',
};

export const PriorityBox: FC<Props> = ({ priority }) => {
  const { palette } = useContext(ThemeContext);
  const paletteColorName = colorMap[priority];
  return (
    <Box
      className='rounded px-1'
      sx={{ backgroundColor: (palette[paletteColorName] as PaletteColor)?.main || palette.secondary.main }}
    >
      <Text className='my-1 mx-2' color={palette.common.white} text={priority} />
    </Box>
  );
};
