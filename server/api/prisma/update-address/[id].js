import { PrismaClient } from "@prisma/client";

const prisma =  new PrismaClient()

export default defineEventHandler(async event => {
    const bode = await readBody(event)

    const res = await prisma.addresses.update({
        where: {ide: Number(event.context.params.id)},
        data: {
            name: bode.name,
            address: body.address,
            zipcode: body.zipCode,
            city: body.city,
            country: body.country
        }
    })

    return res
})