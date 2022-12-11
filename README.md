
[**Chiller**](https://en.wikipedia.org/wiki/Chiller) is a technical equipment for the production of industrial cold. It consists of 4 main components:
- [**Compressor**](https://en.wikipedia.org/wiki/Compressor)
- [**Condenser**](https://en.wikipedia.org/wiki/Condenser_(heat_transfer))
- [**Evaporator**](https://en.wikipedia.org/wiki/Evaporator)
- [**Expansion Valve**](https://en.wikipedia.org/wiki/Expansion_valve_(steam_engine))

Among these components, condenser and expansion valve are fixed, compressor and evaporator are variable.
This project presents the calculation of the chiller. Since this is a complex and multi-stage object, the creational [**builder pattern**](https://en.wikipedia.org/wiki/Builder_pattern) is chosen.

![images](https://user-images.githubusercontent.com/107051542/206921752-755931b4-6a92-40da-acdd-6825712c9c30.png)

Chiller class includes variables:

- **Cooling capacity** is defined as the amount of cooling (usually expressed in terms of kW or tons of cooling) delivered by the system divided by the amount of air passing through the system; 
- **Compressor power** input depends on compressor type (scroll or centrifugal) and refrigerant type 
- **EER** - Energy Efficiency Ratio, is the cooling process efficiency factor of chiller and is calculated by dividing the cooling output with the energy usage
- **Refrigerant type** - there are lots of these, despite the fact that their boiling points are different, refrigerant always boils at a lower temperature than the surrounding air, which causes cooling as it absorbs heat from the environment 
Methods:
- Setters and getters to create main variables
- Refrigerant type as enum

Class ChillerBuilder is a generic builder and an abstract class. It was created to set up our product, the chiller, so it contains abstract methods
- buildCapacity();
- buildCompressorPower();
- buildEER();
- buildRefrigerationType();

**Class SrewBuilder** and C**entrifugalBuilder** are a concrete builders of chillers and is a descendants of the ***abstract*** class **ChillerBuilder** and implements its abstract methods. 

Class Director manages the process of creating products, stores a link to the builder, and produces our product sequentially step-by-step.
