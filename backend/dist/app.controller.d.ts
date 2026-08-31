import { PrismaService } from './prisma.service';
export declare class AppController {
    private readonly prisma;
    constructor(prisma: PrismaService);
    getHello(): Promise<{
        message: string;
        database: string;
        users: {
            id: string;
            name: string;
            email: string;
            password: string | null;
            phone: string | null;
            role: import("@prisma/client").$Enums.UserRole;
            avatarUrl: string | null;
            isActive: boolean;
            createdAt: Date;
            updatedAt: Date;
        }[];
    }>;
}
