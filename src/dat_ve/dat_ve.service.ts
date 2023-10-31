import { Injectable } from '@nestjs/common';
import { CreateDatVeDto } from './dto/create-dat_ve.dto';
import { UpdateDatVeDto } from './dto/update-dat_ve.dto';

@Injectable()
export class DatVeService {
  create(createDatVeDto: CreateDatVeDto) {
    return 'This action adds a new datVe';
  }

  findAll() {
    return `This action returns all datVe`;
  }

  findOne(id: number) {
    return `This action returns a #${id} datVe`;
  }

  update(id: number, updateDatVeDto: UpdateDatVeDto) {
    return `This action updates a #${id} datVe`;
  }

  remove(id: number) {
    return `This action removes a #${id} datVe`;
  }
}
