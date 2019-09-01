-- Create Primary and Foreign Keys

ALTER TABLE "neuroscience"
ADD CONSTRAINT "pk_neuroscience" PRIMARY KEY ("title");


ALTER TABLE "mental_health_pol"
ADD CONSTRAINT "pk_mental_health_pol" PRIMARY KEY ("country", "year");