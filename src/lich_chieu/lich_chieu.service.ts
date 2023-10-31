import { Injectable } from '@nestjs/common';
import { CreateLichChieuDto } from './dto/create-lich_chieu.dto';
import { UpdateLichChieuDto } from './dto/update-lich_chieu.dto';

@Injectable()
export class LichChieuService {
  create(createLichChieuDto: CreateLichChieuDto) {
    return 'This action adds a new lichChieu';
  }

  findAll() {
    return `This action returns all lichChieu`;
  }

  findOne(id: number) {
    return `This action returns a #${id} lichChieu`;
  }

  update(id: number, updateLichChieuDto: UpdateLichChieuDto) {
    return `This action updates a #${id} lichChieu`;
  }

  remove(id: number) {
    return `This action removes a #${id} lichChieu`;
  }
}
