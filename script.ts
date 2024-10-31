import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
    // Create a team
    const team = await prisma.team.create({
        data: {
            name: "Warriors",
            players: {
                create: [
                    {
                        name: "Alice",
                        age: 25,
                        position: "ADMIN"
                    },
                    {
                        name: "Bob",
                        age: 22,
                        position: "BASIC"
                    }
                ]
            }
        }
    });

    console.log(team);
}

main()
    .catch(e => { console.error(e.message); })
    .finally(async () => { await prisma.$disconnect(); });
