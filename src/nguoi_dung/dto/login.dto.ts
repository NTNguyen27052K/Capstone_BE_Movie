import { ApiProperty } from '@nestjs/swagger';

export class loginDto {
  @ApiProperty()
  tai_khoan: string;

  @ApiProperty()
  mat_khau: string;
  constructor(tai_khoan: string, mat_khau: string) {
    tai_khoan;
    mat_khau;
  }
}
