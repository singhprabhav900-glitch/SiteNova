import { Controller, Get } from '@nestjs/common';
import { PrismaService } from './prisma.service';

@Controller()
export class AppController {
  constructor(private readonly prisma: PrismaService) {}

  @Get()
  async getHello() {
    const users = await this.prisma.user.findMany();

    return {
      message: 'SiteNova Backend is running 🚀',
      database: 'Connected successfully',
      users,
    };
  }
}
