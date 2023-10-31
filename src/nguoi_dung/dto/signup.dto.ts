import { ApiProperty } from '@nestjs/swagger';

//Kiểu dự liệu nhận từ client
export class signupDto {
  @ApiProperty()
  taiKhoan: string;

  @ApiProperty()
  hoTen: string;

  @ApiProperty()
  email: string;

  @ApiProperty()
  soDT: string;

  @ApiProperty()
  matKhau: string;
}
