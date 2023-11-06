import { ApiProperty, ApiQuery } from '@nestjs/swagger';

export class findUserDto {
  @ApiProperty()
  tuKhoa: string;

  constructor(tuKhoa: string) {
    tuKhoa;
  }
}
