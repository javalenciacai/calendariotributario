# Backlog de Investigación

## Cómo leer este backlog

Este documento convierte el plan de investigación en un backlog ejecutable y actualizable. `pitch.md` sigue siendo la referencia estratégica; este archivo concentra la ejecución diaria.

- El backlog está agrupado en 7 épicas, una por cada frente 4.1-4.7.
- Cada épica contiene historias de usuario formales, con tareas chequeables, dueño, dependencias, entregable y criterios de aceptación.
- El avance visible se lleva en dos niveles:
  - por HU: `Estado` y `% avance`;
  - por tarea: checklist dentro de cada HU.
- El backlog inicial contiene `26 HU` porque ese es el inventario operativo explícitamente definido para las épicas.
- La semana 6 no agrega nuevas HU: se usa para cerrar HU abiertas, validar criterios y tomar la decisión Go / No-go.

## Tablero de avance global

| Épica | HU totales | No iniciadas | En curso | Bloqueadas | En revisión | Completadas | % avance | Dueño |
|---|---:|---:|---:|---:|---:|---:|---:|---|
| 4.1 Regulación | 4 | 4 | 0 | 0 | 0 | 0 | 0% | Product Researcher + Experto fiscal |
| 4.2 Usuarios | 4 | 4 | 0 | 0 | 0 | 0 | 0% | UX Researcher + Product Researcher |
| 4.3 Competencia | 3 | 3 | 0 | 0 | 0 | 0 | 0% | Product Researcher |
| 4.4 Técnica | 4 | 4 | 0 | 0 | 0 | 0 | 0% | Engineer |
| 4.5 Legal | 3 | 3 | 0 | 0 | 0 | 0 | 0% | Abogado fiscal + Product Researcher |
| 4.6 Negocio | 3 | 3 | 0 | 0 | 0 | 0 | 0% | Product Researcher + Engineer |
| 4.7 Mantenimiento | 5 | 5 | 0 | 0 | 0 | 0 | 0% | Engineer + Experto fiscal + Product Researcher |
| **Total** | **26** | **26** | **0** | **0** | **0** | **0** | **0%** | Research Team |

## Reglas de estado, avance y evidencia

**Estados válidos**

- `No iniciada`: 0 tareas completadas.
- `En curso`: hay al menos 1 tarea completada, pero no todas.
- `Bloqueada`: existe un bloqueo activo que impide ejecutar la siguiente tarea.
- `En revisión`: todas las tareas están completas, pero faltan validación o evidencia.
- `Completada`: criterios de aceptación validados y evidencia registrada.

**Cálculo de avance**

- `% avance = tareas completadas / tareas totales`, redondeado al entero más cercano.
- Cada HU debe tener entre 3 y 7 tareas.
- Una épica acumula su `% avance` a partir del promedio simple de sus HU.

**Reglas de evidencia**

- Ninguna HU puede pasar a `Completada` sin llenar:
  - `Fuente`
  - `Fecha`
  - `Hallazgo`
  - `Ubicación del artefacto`
- Si las tareas están cerradas pero falta evidencia, la HU queda en `En revisión`.
- Si una dependencia crítica no se resuelve dentro de la semana objetivo, la HU pasa a `Bloqueada`.

**Ritmo de actualización**

- Actualizar el tablero global al cierre de cada semana.
- Actualizar cada HU al cierre de cualquier sesión de trabajo relevante.
- Escalar bloqueos en el cierre semanal si impiden ejecutar la siguiente tarea.

## Épicas del backlog

### Épica 4.1 Regulación y tributación

| Épica | Objetivo | Dueño | Prioridad | Entregable macro | % avance |
|---|---|---|---|---|---:|
| 4.1 Regulación y tributación | Entender la estructura de obligaciones tributarias en los mercados objetivo y dejar una matriz utilizable por técnica, legal y mantenimiento. | Product Researcher + Experto fiscal | Alta | Matriz estructurada de obligaciones tributarias por país/jurisdicción | 0% |

Salida esperada: matriz tributaria cerrada, con fuentes oficiales, periodicidades, criterios de elegibilidad y notas de sanción para los 10 mercados.

#### HU-REG-01 Confirmar 10 mercados prioritarios

- ID: `HU-REG-01`
- Título: Confirmar 10 mercados prioritarios para el ciclo
- Como / Quiero / Para: Como `Product Researcher`, quiero cerrar la lista final de 10 mercados y resolver Australia vs India, para evitar deriva de alcance y habilitar el resto del backlog regulatorio.
- Semana objetivo: `w1`
- Dueño: `Product Researcher`
- Dependencias: `Ninguna`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Lista final de 10 mercados con criterio de selección documentado.
- Criterios de aceptación:
  - [ ] Existe una lista final de 10 mercados aprobada para el ciclo.
  - [ ] La decisión Australia vs India está justificada por accesibilidad de fuentes y relevancia comercial.
- Tareas:
  - [ ] Revisar la lista base de mercados definida en `pitch.md`.
  - [ ] Comparar Australia e India con criterios de accesibilidad regulatoria.
  - [ ] Documentar la selección final y la justificación de cada mercado.
  - [ ] Confirmar que el resto del backlog usa la misma lista cerrada.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-REG-02 Mapear categorías tributarias comunes

- ID: `HU-REG-02`
- Título: Mapear categorías tributarias comunes por mercado
- Como / Quiero / Para: Como `Experto fiscal`, quiero mapear las categorías tributarias comunes de los mercados objetivo, para construir una taxonomía mínima comparable entre países.
- Semana objetivo: `w1-w2`
- Dueño: `Experto fiscal`
- Dependencias: `HU-REG-01`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Taxonomía común de impuestos y obligaciones informativas.
- Criterios de aceptación:
  - [ ] Existe una taxonomía mínima compartida para renta, IVA/VAT/GST, nómina, capital y obligaciones informativas.
  - [ ] La taxonomía es suficientemente clara para soportar la matriz tributaria y el modelado técnico.
- Tareas:
  - [ ] Identificar categorías tributarias comunes presentes en los 10 mercados.
  - [ ] Normalizar nombres para evitar duplicidades semánticas.
  - [ ] Marcar excepciones locales que no encajen en la taxonomía base.
  - [ ] Validar la taxonomía con el Product Researcher para uso transversal.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-REG-03 Documentar fuentes, periodicidades y sanciones

- ID: `HU-REG-03`
- Título: Documentar fuentes oficiales, periodicidades y sanciones por mercado
- Como / Quiero / Para: Como `Product Researcher`, quiero documentar las fuentes oficiales, periodicidades y sanciones de cada mercado, para dimensionar la confiabilidad del dato y el dolor del usuario.
- Semana objetivo: `w2-w3`
- Dueño: `Product Researcher`
- Dependencias: `HU-REG-01`, `HU-REG-02`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Inventario por mercado de autoridad fiscal, periodicidad, fuente oficial y sanciones.
- Criterios de aceptación:
  - [ ] Los 10 mercados tienen autoridad fiscal y fuente oficial registradas.
  - [ ] Cada mercado tiene periodicidades y notas de sanción mínimas documentadas.
- Tareas:
  - [ ] Registrar autoridad fiscal principal por mercado.
  - [ ] Documentar periodicidades de presentación relevantes.
  - [ ] Ubicar fuente oficial de fechas, calendario o publicación equivalente.
  - [ ] Registrar sanciones o consecuencias de incumplimiento cuando existan.
  - [ ] Señalar mercados con información incompleta o ambigua.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-REG-04 Consolidar matriz tributaria usable

- ID: `HU-REG-04`
- Título: Consolidar una matriz tributaria utilizable por otros frentes
- Como / Quiero / Para: Como `Product Researcher`, quiero consolidar una matriz tributaria usable, para que técnica, legal y mantenimiento trabajen sobre una base común.
- Semana objetivo: `w3`
- Dueño: `Product Researcher`
- Dependencias: `HU-REG-02`, `HU-REG-03`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Matriz tributaria consolidada y lista para consumo interno.
- Criterios de aceptación:
  - [ ] La matriz contiene mercado, categoría, periodicidad, elegibilidad, fuente y notas de riesgo.
  - [ ] La matriz puede ser reutilizada por las épicas 4.4, 4.5 y 4.7 sin reinterpretación.
- Tareas:
  - [ ] Consolidar la taxonomía y las fuentes en una sola matriz.
  - [ ] Revisar consistencia de nombres, columnas y cobertura.
  - [ ] Marcar huecos de información pendientes o inciertos.
  - [ ] Compartir la versión de referencia con técnica, legal y mantenimiento.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

### Épica 4.2 Usuarios

| Épica | Objetivo | Dueño | Prioridad | Entregable macro | % avance |
|---|---|---|---|---|---:|
| 4.2 Usuarios | Validar dolor, severidad, confianza y disposición a pagar en freelancers, PYMES y contadores. | UX Researcher + Product Researcher | Alta | Documento de JTBD, personas y síntesis de dolor y willingness to pay | 0% |

Salida esperada: evidencia cualitativa y cuantitativa suficiente para confirmar dolor, confianza requerida y señales de monetización por segmento.

#### HU-USR-01 Diseñar reclutamiento y guía

- ID: `HU-USR-01`
- Título: Diseñar reclutamiento, muestra y guía de entrevistas
- Como / Quiero / Para: Como `UX Researcher`, quiero definir el plan de reclutamiento y la guía de entrevistas, para capturar evidencia comparable entre segmentos desde el inicio.
- Semana objetivo: `w1`
- Dueño: `UX Researcher`
- Dependencias: `HU-REG-01`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Plan de reclutamiento y guía de entrevistas aprobados.
- Criterios de aceptación:
  - [ ] Existe una guía de entrevistas con preguntas sobre control actual, dolor, confianza y pago.
  - [ ] Existe una muestra objetivo por segmento con criterio de reclutamiento claro.
- Tareas:
  - [ ] Definir segmentos y tamaño mínimo de muestra por tipo de usuario.
  - [ ] Redactar la guía de entrevista con preguntas comparables.
  - [ ] Definir criterios de exclusión y señales a capturar en cada sesión.
  - [ ] Preparar plantilla de notas y síntesis por entrevista.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-USR-02 Entrevistar freelancers y PYMES

- ID: `HU-USR-02`
- Título: Ejecutar entrevistas con freelancers y dueños de PYMES
- Como / Quiero / Para: Como `UX Researcher`, quiero entrevistar freelancers y PYMES, para validar frecuencia del problema, severidad del dolor y soluciones actuales.
- Semana objetivo: `w2-w3`
- Dueño: `UX Researcher`
- Dependencias: `HU-USR-01`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Síntesis cualitativa de entrevistas con freelancers y PYMES.
- Criterios de aceptación:
  - [ ] Se completaron al menos 10 entrevistas entre freelancers y PYMES.
  - [ ] La síntesis recoge patrones claros de dolor, multas, comportamiento actual y confianza requerida.
- Tareas:
  - [ ] Reclutar participantes de los segmentos freelancers y PYMES.
  - [ ] Ejecutar las entrevistas con registro estructurado de hallazgos.
  - [ ] Sintetizar patrones de comportamiento y fricción por segmento.
  - [ ] Extraer citas textuales útiles para la decisión del ciclo.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-USR-03 Entrevistar contadores y validar canal B2B2C

- ID: `HU-USR-03`
- Título: Entrevistar contadores y validar potencial como canal multi-cliente
- Como / Quiero / Para: Como `Product Researcher`, quiero entrevistar contadores, para validar si pueden ser usuarios directos o canal B2B2C para el producto.
- Semana objetivo: `w2-w3`
- Dueño: `Product Researcher`
- Dependencias: `HU-USR-01`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Síntesis de entrevistas a contadores y recomendación sobre canal B2B2C.
- Criterios de aceptación:
  - [ ] Se completaron al menos 5 entrevistas con contadores o asesores fiscales.
  - [ ] Existe una conclusión explícita sobre uso multi-cliente y disposición a pagar/canal.
- Tareas:
  - [ ] Reclutar contadores con manejo de varios clientes.
  - [ ] Ejecutar entrevistas enfocadas en operación, cambios de calendario y canal B2B2C.
  - [ ] Sintetizar beneficios esperados, objeciones y barreras de adopción.
  - [ ] Formular una recomendación de canal basada en evidencia.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-USR-04 Lanzar encuesta y sintetizar JTBD/personas

- ID: `HU-USR-04`
- Título: Lanzar encuesta cuantitativa y consolidar JTBD y personas
- Como / Quiero / Para: Como `UX Researcher`, quiero ejecutar una encuesta y consolidar JTBD/personas, para complementar la evidencia cualitativa con señales de frecuencia y disposición a pagar.
- Semana objetivo: `w3-w5`
- Dueño: `UX Researcher`
- Dependencias: `HU-USR-02`, `HU-USR-03`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Documento de JTBD, personas y resultados cuantitativos.
- Criterios de aceptación:
  - [ ] La encuesta tiene muestra suficiente para el análisis definido por el equipo.
  - [ ] El documento final conecta resultados cuantitativos con JTBD y personas accionables.
- Tareas:
  - [ ] Diseñar la encuesta a partir de hallazgos de entrevistas.
  - [ ] Lanzar la encuesta y monitorear la calidad de la muestra.
  - [ ] Analizar resultados de frecuencia del problema, confianza y willingness to pay.
  - [ ] Construir JTBD y personas con base en evidencia cualitativa y cuantitativa.
  - [ ] Publicar una síntesis ejecutiva para negocio y producto.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

### Épica 4.3 Competencia

| Épica | Objetivo | Dueño | Prioridad | Entregable macro | % avance |
|---|---|---|---|---|---:|
| 4.3 Competencia | Entender el mercado actual, el pricing y los vacíos que podrían justificar diferenciación. | Product Researcher | Media | Mapa competitivo con pricing, cobertura y oportunidades de diferenciación | 0% |

Salida esperada: benchmark competitivo con tesis explícita de espacio en blanco y señales de diferenciación defendible.

#### HU-CMP-01 Analizar competidores globales

- ID: `HU-CMP-01`
- Título: Analizar competidores globales relevantes
- Como / Quiero / Para: Como `Product Researcher`, quiero analizar competidores globales, para entender cobertura, pricing, foco de producto y límites del mercado actual.
- Semana objetivo: `w1-w2`
- Dueño: `Product Researcher`
- Dependencias: `HU-REG-01`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Benchmark de competidores globales.
- Criterios de aceptación:
  - [ ] El benchmark cubre al menos TaxJar, Avalara, QuickBooks Tax, Taxfix y Declarando.es.
  - [ ] Cada competidor tiene documentados pricing, cobertura, foco y debilidades relevantes.
- Tareas:
  - [ ] Levantar lista base de competidores globales del pitch.
  - [ ] Documentar foco de producto, cobertura de mercados y casos de uso.
  - [ ] Registrar pricing, formato comercial y señales de posicionamiento.
  - [ ] Revisar reseñas o quejas frecuentes para detectar vacíos.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-CMP-02 Analizar competidores LATAM

- ID: `HU-CMP-02`
- Título: Analizar competidores y alternativas regionales en LATAM
- Como / Quiero / Para: Como `Product Researcher`, quiero analizar competidores regionales en LATAM, para identificar saturación local, patrones de producto y oportunidades de entrada.
- Semana objetivo: `w2-w3`
- Dueño: `Product Researcher`
- Dependencias: `HU-CMP-01`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Benchmark de alternativas LATAM.
- Criterios de aceptación:
  - [ ] El benchmark cubre Alegra, Siigo, CONTPAQi, Aspel, Colppy y Xubio.
  - [ ] Existe una lectura comparativa entre soluciones globales y regionales.
- Tareas:
  - [ ] Documentar soluciones regionales por país y segmento.
  - [ ] Registrar pricing, promesa principal y alcance funcional.
  - [ ] Identificar si resuelven calendario, declaración o gestión contable más amplia.
  - [ ] Comparar su posicionamiento con los competidores globales ya analizados.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-CMP-03 Consolidar pricing, vacíos y diferenciación

- ID: `HU-CMP-03`
- Título: Consolidar pricing, vacíos del mercado y vectores de diferenciación
- Como / Quiero / Para: Como `Product Researcher`, quiero consolidar pricing, vacíos y diferenciación, para sostener una tesis competitiva utilizable en negocio y Go / No-go.
- Semana objetivo: `w4`
- Dueño: `Product Researcher`
- Dependencias: `HU-CMP-01`, `HU-CMP-02`, `HU-USR-02`, `HU-USR-03`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Mapa competitivo final con vectores de diferenciación.
- Criterios de aceptación:
  - [ ] El mapa competitivo presenta pricing comparable y principales vacíos por tipo de solución.
  - [ ] Se documentan al menos 2 vectores claros de diferenciación potencial.
- Tareas:
  - [ ] Unificar los benchmarks global y LATAM en una sola matriz.
  - [ ] Cruzar vacíos competitivos con dolores detectados en usuarios.
  - [ ] Formular tesis de diferenciación con respaldo explícito.
  - [ ] Publicar la versión final del mapa competitivo.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

### Épica 4.4 Técnica

| Épica | Objetivo | Dueño | Prioridad | Entregable macro | % avance |
|---|---|---|---|---|---:|
| 4.4 Técnica | Evaluar si la solución es técnicamente factible y dejar una arquitectura conceptual mínima. | Engineer | Alta | Documento de arquitectura conceptual y matriz de decisiones técnicas | 0% |

Salida esperada: modelo mínimo de obligación, estrategia preliminar de reglas y notificaciones, y arquitectura conceptual con riesgos técnicos abiertos.

#### HU-TEC-01 Definir modelo mínimo de obligación

- ID: `HU-TEC-01`
- Título: Definir el modelo mínimo de una obligación tributaria
- Como / Quiero / Para: Como `Engineer`, quiero definir el modelo mínimo de una obligación tributaria, para evaluar si el problema puede estructurarse sin sobre-diseño temprano.
- Semana objetivo: `w2`
- Dueño: `Engineer`
- Dependencias: `HU-REG-02`, `HU-REG-03`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Borrador de modelo mínimo de obligación tributaria.
- Criterios de aceptación:
  - [ ] El modelo incluye jurisdicción, categoría, periodicidad, fuente y lógica mínima de elegibilidad.
  - [ ] El modelo puede mapearse con la matriz tributaria actual sin campos imposibles de sostener.
- Tareas:
  - [ ] Revisar la matriz tributaria consolidada para identificar campos comunes.
  - [ ] Proponer la estructura mínima de una obligación tributaria.
  - [ ] Validar el borrador con Product Researcher y Experto fiscal.
  - [ ] Registrar dudas abiertas o excepciones que no entren en el modelo.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-TEC-02 Evaluar reglas, fuentes y versionado

- ID: `HU-TEC-02`
- Título: Evaluar modelado de reglas, fuentes y versionado del dato
- Como / Quiero / Para: Como `Engineer`, quiero evaluar reglas, fuentes y versionado, para determinar cómo sostener un calendario personalizado y auditable.
- Semana objetivo: `w3-w4`
- Dueño: `Engineer`
- Dependencias: `HU-TEC-01`, `HU-REG-04`, `HU-MNT-01`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Recomendación técnica sobre reglas, versionado y niveles de confianza del dato.
- Criterios de aceptación:
  - [ ] Existe una recomendación explícita sobre cómo modelar reglas de elegibilidad.
  - [ ] Existe una propuesta mínima para versionado, audit log y niveles de confianza del dato.
- Tareas:
  - [ ] Evaluar opciones para representar reglas de elegibilidad.
  - [ ] Analizar implicaciones de versionado y audit log para cambios regulatorios.
  - [ ] Definir cómo representar `confirmed`, `estimated` y `unverified`.
  - [ ] Documentar riesgos técnicos y trade-offs de cada opción.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-TEC-03 Evaluar stack y notificaciones

- ID: `HU-TEC-03`
- Título: Evaluar stack preliminar y opciones de notificación
- Como / Quiero / Para: Como `Engineer`, quiero evaluar stack y opciones de notificación, para estimar velocidad de MVP, complejidad operativa y canales viables.
- Semana objetivo: `w3-w4`
- Dueño: `Engineer`
- Dependencias: `HU-USR-04`, `HU-MNT-02`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Matriz de decisión técnica para stack y notificaciones.
- Criterios de aceptación:
  - [ ] La matriz compara al menos backend, base de datos, frontend y hosting inicial.
  - [ ] La matriz cubre email, SMS, push y WhatsApp con criterios de costo y viabilidad.
- Tareas:
  - [ ] Comparar opciones de stack propuestas en el pitch.
  - [ ] Evaluar proveedores de notificación por canal prioritario.
  - [ ] Cruzar preferencias de canal con evidencia de usuarios.
  - [ ] Recomendar una combinación técnica inicial con justificación.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-TEC-04 Consolidar arquitectura conceptual

- ID: `HU-TEC-04`
- Título: Consolidar la arquitectura conceptual mínima
- Como / Quiero / Para: Como `Engineer`, quiero consolidar la arquitectura conceptual mínima, para que la decisión Go / No-go tenga una base técnica defendible.
- Semana objetivo: `w4`
- Dueño: `Engineer`
- Dependencias: `HU-TEC-01`, `HU-TEC-02`, `HU-TEC-03`, `HU-MNT-03`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Documento de arquitectura conceptual.
- Criterios de aceptación:
  - [ ] El documento describe componentes mínimos, flujo de datos y riesgos técnicos abiertos.
  - [ ] El documento incorpora explícitamente necesidades de mantenimiento, versionado y notificación.
- Tareas:
  - [ ] Integrar modelo mínimo, reglas, versionado y stack en una sola propuesta.
  - [ ] Describir el flujo de datos desde fuente oficial hasta usuario final.
  - [ ] Registrar riesgos técnicos abiertos y supuestos no resueltos.
  - [ ] Publicar la arquitectura conceptual de referencia del ciclo.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

### Épica 4.5 Legal y cumplimiento

| Épica | Objetivo | Dueño | Prioridad | Entregable macro | % avance |
|---|---|---|---|---|---:|
| 4.5 Legal y cumplimiento | Determinar si el servicio puede operar como producto informativo con riesgo legal manejable. | Abogado fiscal + Product Researcher | Alta | Memorando legal con riesgos, límites operativos y disclaimers base | 0% |

Salida esperada: memorando legal que defina el borde operativo del producto y señale si existe un bloqueo legal para avanzar.

#### HU-LEG-01 Delimitar información vs asesoría fiscal

- ID: `HU-LEG-01`
- Título: Delimitar el borde entre información fiscal y asesoría fiscal
- Como / Quiero / Para: Como `Abogado fiscal`, quiero delimitar información vs asesoría fiscal, para definir cómo puede posicionarse el producto sin cruzar una línea regulada.
- Semana objetivo: `w3`
- Dueño: `Abogado fiscal`
- Dependencias: `HU-TEC-01`, `HU-REG-04`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Criterio legal base sobre el posicionamiento del producto.
- Criterios de aceptación:
  - [ ] Existe una definición documentada del borde entre información y asesoría.
  - [ ] Existe una recomendación clara de wording y límites operativos iniciales.
- Tareas:
  - [ ] Revisar la funcionalidad mínima propuesta del servicio.
  - [ ] Analizar la frontera regulatoria en los mercados prioritarios.
  - [ ] Documentar riesgos de lenguaje, promesa y automatización.
  - [ ] Proponer lineamientos iniciales de posicionamiento.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-LEG-02 Evaluar responsabilidad, privacidad y restricciones

- ID: `HU-LEG-02`
- Título: Evaluar responsabilidad, privacidad y restricciones de operación
- Como / Quiero / Para: Como `Abogado fiscal`, quiero evaluar responsabilidad, privacidad y restricciones, para medir la exposición jurídica y de datos del servicio.
- Semana objetivo: `w3-w4`
- Dueño: `Abogado fiscal`
- Dependencias: `HU-LEG-01`, `HU-REG-03`, `HU-MNT-02`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Análisis legal de responsabilidad, privacidad y restricciones.
- Criterios de aceptación:
  - [ ] El análisis cubre responsabilidad por errores de fecha, privacidad y retención de datos.
  - [ ] El análisis señala mercados o prácticas que podrían bloquear la operación.
- Tareas:
  - [ ] Revisar escenarios de responsabilidad por información incorrecta.
  - [ ] Mapear obligaciones base de privacidad y retención de datos.
  - [ ] Identificar restricciones de operación o licencias por mercado.
  - [ ] Resumir riesgos legales altos, medios y bajos.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-LEG-03 Consolidar memorando legal y disclaimers base

- ID: `HU-LEG-03`
- Título: Consolidar memorando legal y disclaimers base
- Como / Quiero / Para: Como `Product Researcher`, quiero consolidar el memorando legal y los disclaimers base, para que la decisión final tenga límites operativos claros y accionables.
- Semana objetivo: `w4-w5`
- Dueño: `Product Researcher`
- Dependencias: `HU-LEG-01`, `HU-LEG-02`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Memorando legal final con disclaimers base.
- Criterios de aceptación:
  - [ ] El memorando clasifica el riesgo legal como manejable, condicionado o bloqueante.
  - [ ] El memorando incluye disclaimers base y límites de operación recomendados.
- Tareas:
  - [ ] Integrar hallazgos legales en un solo memorando.
  - [ ] Redactar los disclaimers base y notas de responsabilidad sugeridas.
  - [ ] Señalar dependencias legales que condicionen el Go / No-go.
  - [ ] Publicar la versión final del memorando legal.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

### Épica 4.6 Modelo de negocio

| Épica | Objetivo | Dueño | Prioridad | Entregable macro | % avance |
|---|---|---|---|---|---:|
| 4.6 Modelo de negocio | Determinar si existe una forma sostenible de monetizar el servicio bajo los costos y restricciones detectados. | Product Researcher + Engineer | Alta | Modelo financiero one-pager con escenarios y recomendación de modelo inicial | 0% |

Salida esperada: recomendación de modelo de negocio inicial con sensibilidad a costos de mantenimiento y señal de margen positivo o negativo.

#### HU-BIZ-01 Benchmark de pricing y churn

- ID: `HU-BIZ-01`
- Título: Construir benchmark de pricing y churn comparable
- Como / Quiero / Para: Como `Product Researcher`, quiero construir un benchmark de pricing y churn, para evaluar referencias realistas de monetización y retención.
- Semana objetivo: `w3-w4`
- Dueño: `Product Researcher`
- Dependencias: `HU-CMP-03`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Benchmark de pricing y churn comparable.
- Criterios de aceptación:
  - [ ] Existe benchmark de pricing para los modelos más comparables.
  - [ ] Existe benchmark o proxy razonable de churn para productos parecidos.
- Tareas:
  - [ ] Extraer pricing relevante del benchmark competitivo.
  - [ ] Buscar referencias de churn o proxies por tipo de producto.
  - [ ] Agrupar referencias por B2C, B2B y B2B2C cuando aplique.
  - [ ] Publicar una lectura comparativa para negocio.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-BIZ-02 Estimar TAM, CAC y LTV

- ID: `HU-BIZ-02`
- Título: Estimar TAM, CAC y LTV preliminares
- Como / Quiero / Para: Como `Engineer`, quiero estimar TAM, CAC y LTV preliminares, para medir si el negocio podría sostenerse con los costos operativos esperados.
- Semana objetivo: `w4-w5`
- Dueño: `Engineer`
- Dependencias: `HU-USR-04`, `HU-BIZ-01`, `HU-MNT-05`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Estimación preliminar de TAM, CAC y LTV.
- Criterios de aceptación:
  - [ ] Los supuestos de TAM, CAC y LTV están documentados y trazables.
  - [ ] La estimación ya incorpora costo de mantenimiento por país como variable crítica.
- Tareas:
  - [ ] Estimar tamaño de mercado por país y segmento prioritario.
  - [ ] Definir supuestos de adquisición por canal potencial.
  - [ ] Estimar LTV preliminar por tipo de cliente.
  - [ ] Documentar sensibilidad del modelo a costo de mantenimiento y churn.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-BIZ-03 Construir escenarios y recomendar modelo inicial

- ID: `HU-BIZ-03`
- Título: Construir escenarios y recomendar un modelo inicial
- Como / Quiero / Para: Como `Product Researcher`, quiero construir escenarios y recomendar un modelo inicial, para que la decisión final tenga una tesis económica concreta.
- Semana objetivo: `w5`
- Dueño: `Product Researcher`
- Dependencias: `HU-BIZ-01`, `HU-BIZ-02`, `HU-LEG-03`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Modelo financiero one-pager con recomendación.
- Criterios de aceptación:
  - [ ] El one-pager incluye escenarios conservador, base y optimista.
  - [ ] Existe una recomendación explícita de modelo inicial y sus principales riesgos.
- Tareas:
  - [ ] Integrar pricing, churn, TAM, CAC, LTV y costo de mantenimiento.
  - [ ] Modelar escenarios conservador, base y optimista.
  - [ ] Comparar alternativas de monetización y escoger una recomendación.
  - [ ] Publicar el one-pager de negocio para la decisión Go / No-go.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

### Épica 4.7 Mantenimiento y actualización del calendario

| Épica | Objetivo | Dueño | Prioridad | Entregable macro | % avance |
|---|---|---|---|---|---:|
| 4.7 Mantenimiento y actualización del calendario | Determinar si el calendario puede mantenerse actualizado con un costo y confiabilidad compatibles con el negocio. | Engineer + Experto fiscal + Product Researcher | **Prioridad crítica** | Modelo operativo de mantenimiento, costo mensual por país y reporte del PoC | 0% |

Salida esperada: modelo operativo defendible para mantener el calendario, con límites claros de automatización, revisión humana y costo mensual por país.

#### HU-MNT-01 Mapear tipos y frecuencia de cambios

- ID: `HU-MNT-01`
- Título: Mapear tipos de cambio y frecuencia histórica por país
- Como / Quiero / Para: Como `Experto fiscal`, quiero mapear tipos y frecuencia de cambios tributarios, para dimensionar la carga operativa real de mantener el calendario al día.
- Semana objetivo: `w2-w3`
- Dueño: `Experto fiscal`
- Dependencias: `HU-REG-03`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Inventario de tipos de cambio y frecuencia histórica por país.
- Criterios de aceptación:
  - [ ] Existe clasificación de cambios: fecha, periodicidad, elegibilidad, nuevas obligaciones y derogaciones.
  - [ ] Existe una lectura inicial de frecuencia histórica para cada mercado o al menos para los mercados más críticos.
- Tareas:
  - [ ] Clasificar los tipos de cambio que afectan un calendario tributario.
  - [ ] Revisar historial de cambios o publicaciones relevantes por mercado.
  - [ ] Registrar frecuencia observada y señales de cambios de último minuto.
  - [ ] Marcar mercados con mayor volatilidad operativa.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-MNT-02 Evaluar fuentes y estrategias operativas

- ID: `HU-MNT-02`
- Título: Evaluar fuentes de actualización y estrategias operativas
- Como / Quiero / Para: Como `Product Researcher`, quiero evaluar fuentes y estrategias operativas, para decidir qué combinación de curación, scraping, alianzas o monitoreo vale la pena investigar a fondo.
- Semana objetivo: `w3-w4`
- Dueño: `Product Researcher`
- Dependencias: `HU-MNT-01`, `HU-REG-04`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Evaluación comparativa de fuentes y estrategias operativas.
- Criterios de aceptación:
  - [ ] Existe comparación entre curación manual, scraping, monitoreo, alianzas y enfoque híbrido.
  - [ ] Se identifican fuentes oficiales y no estructuradas con su riesgo y viabilidad.
- Tareas:
  - [ ] Inventariar fuentes oficiales y formatos por mercado.
  - [ ] Evaluar la viabilidad operativa de curación manual y scraping.
  - [ ] Revisar opciones de alianzas, proveedores y monitoreo de cambios.
  - [ ] Documentar riesgos, costos y límites de cada estrategia.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-MNT-03 Diseñar flujo híbrido con validación humana

- ID: `HU-MNT-03`
- Título: Diseñar el flujo híbrido de actualización con validación humana
- Como / Quiero / Para: Como `Engineer`, quiero diseñar un flujo híbrido con validación humana, para tener una propuesta operativa defendible antes de construir automatizaciones complejas.
- Semana objetivo: `w4`
- Dueño: `Engineer`
- Dependencias: `HU-MNT-02`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Flujo operativo híbrido de detección, validación y publicación.
- Criterios de aceptación:
  - [ ] El flujo describe detección, revisión humana, publicación y notificación a usuarios afectados.
  - [ ] El flujo señala explícitamente dónde la automatización no puede publicar sola.
- Tareas:
  - [ ] Diseñar el flujo desde detección de cambio hasta publicación.
  - [ ] Definir puntos de validación humana obligatoria.
  - [ ] Incorporar versionado, audit log y notificación de cambios.
  - [ ] Revisar el flujo con experto fiscal y Product Researcher.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-MNT-04 Ejecutar PoC de PDFs sobre 50 resoluciones

- ID: `HU-MNT-04`
- Título: Ejecutar PoC de extracción documental sobre 50 resoluciones
- Como / Quiero / Para: Como `Engineer`, quiero ejecutar un PoC de extracción documental sobre 50 resoluciones, para medir si la automatización parcial aporta precisión suficiente al mantenimiento.
- Semana objetivo: `w4`
- Dueño: `Engineer`
- Dependencias: `HU-MNT-02`, `HU-TEC-01`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Reporte del PoC de extracción documental.
- Criterios de aceptación:
  - [ ] El PoC se ejecuta sobre 50 resoluciones reales de 3 países.
  - [ ] El reporte documenta precisión, costo y necesidad de revisión humana.
- Tareas:
  - [ ] Seleccionar 50 resoluciones reales de 3 países para el PoC.
  - [ ] Ejecutar la extracción con el enfoque técnico definido.
  - [ ] Medir precisión de fechas, categorías y jurisdicciones extraídas.
  - [ ] Documentar costo y puntos de falla observados.
  - [ ] Publicar el reporte de resultados del PoC.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

#### HU-MNT-05 Estimar costo mensual por país y criterio de viabilidad

- ID: `HU-MNT-05`
- Título: Estimar costo mensual por país y criterio de viabilidad operativa
- Como / Quiero / Para: Como `Engineer`, quiero estimar costo mensual por país y criterio de viabilidad, para determinar si el mantenimiento es o no el cuello de botella del negocio.
- Semana objetivo: `w5`
- Dueño: `Engineer`
- Dependencias: `HU-MNT-03`, `HU-MNT-04`
- Estado: `No iniciada`
- % avance: `0%`
- Entregable: Estimación de costo mensual por país y criterio de viabilidad.
- Criterios de aceptación:
  - [ ] Existe costo estimado mensual por país para el modelo operativo recomendado.
  - [ ] Existe una conclusión explícita sobre si el mantenimiento es manejable o bloqueante.
- Tareas:
  - [ ] Consolidar costos de personas, automatización y proveedores.
  - [ ] Estimar costo mensual por país en el modelo operativo recomendado.
  - [ ] Definir umbral de viabilidad y alertas de costo.
  - [ ] Documentar la conclusión operativa para negocio y Go / No-go.
- Evidencia:
  - Fuente:
  - Fecha:
  - Hallazgo:
  - Ubicación del artefacto:
- Bloqueos: Ninguno al inicio.

## Dependencias críticas

- `HU-REG-01` habilita el cierre de alcance para todo el backlog.
- `HU-REG-04` es insumo directo para `HU-TEC-02`, `HU-LEG-01` y `HU-MNT-02`.
- `HU-USR-02`, `HU-USR-03` y `HU-USR-04` alimentan pricing, canal y confianza para `HU-CMP-03` y toda la épica 4.6.
- `HU-MNT-01` a `HU-MNT-05` condicionan técnica, negocio y el Go / No-go.
- `HU-LEG-03` puede bloquear la recomendación final aunque el resto del backlog esté completo.
- La secuencia crítica del ciclo es:
  1. Cerrar alcance regulatorio y setup de usuarios.
  2. Completar base regulatoria, entrevistas y benchmark.
  3. Profundizar mantenimiento, técnica y legal.
  4. Modelar negocio con base en costos y restricciones ya validados.
  5. Usar semana 6 para cerrar HUs en revisión y ejecutar Go / No-go.

## Riesgos bloqueantes

| Riesgo | Impacto | Mitigación | Dueño |
|---|---|---|---|
| El costo de mantenimiento por país es inviable. | Puede invalidar el negocio aun con demanda. | Priorizar la épica 4.7 y cerrar `HU-MNT-05` antes de decidir. | Engineer |
| El producto cruza la línea hacia asesoría fiscal regulada. | Puede bloquear la operación o exigir licencias. | Resolver `HU-LEG-01` y `HU-LEG-03` antes del cierre del ciclo. | Abogado fiscal |
| La estructurabilidad de datos es insuficiente. | El calendario personalizado no sería confiable. | Cerrar `HU-REG-04` y `HU-TEC-02` con revisión cruzada. | Product Researcher + Engineer |
| No aparece diferenciación competitiva defendible. | La oportunidad de mercado se debilita. | Cruzar `HU-CMP-03` con `HU-USR-04` y `HU-BIZ-03`. | Product Researcher |
| La muestra de usuarios o encuesta es insuficiente. | La validación de dolor y pricing queda débil. | Priorizar `HU-USR-01` y monitorear calidad de muestra durante `HU-USR-04`. | UX Researcher |

## Criterios de cierre y Go / No-go

| Check | Criterio | Evidencia mínima | HU que lo sostienen |
|---|---|---|---|
| [ ] | El problema es real y recurrente. | Entrevistas y encuesta muestran dolor en más del 70% de la muestra relevante. | `HU-USR-02`, `HU-USR-03`, `HU-USR-04` |
| [ ] | Existe disposición a pagar suficiente. | Señal cuantitativa y cualitativa superior a USD 10/mes como referencia base. | `HU-USR-04`, `HU-BIZ-01`, `HU-BIZ-03` |
| [ ] | Al menos 5 mercados son estructurables. | Matriz tributaria usable y revisión técnica positiva. | `HU-REG-04`, `HU-TEC-01`, `HU-TEC-02` |
| [ ] | El riesgo legal es manejable. | Memorando legal final sin bloqueo estructural. | `HU-LEG-01`, `HU-LEG-02`, `HU-LEG-03` |
| [ ] | El mantenimiento es viable. | Costo mensual por país defendible y flujo híbrido validado. | `HU-MNT-03`, `HU-MNT-04`, `HU-MNT-05` |
| [ ] | Existe diferenciación defendible. | Dos o más vectores claros de diferenciación. | `HU-CMP-03`, `HU-USR-04` |
| [ ] | El negocio puede tener margen positivo. | One-pager con escenario conservador sostenible a 18 meses. | `HU-BIZ-02`, `HU-BIZ-03` |

Regla de cierre:

- `Go`: todos los checks críticos completos y sin bloqueos abiertos en legal o mantenimiento.
- `Go condicionado`: señal positiva general, pero queda una HU crítica en `En revisión` con fecha de cierre definida.
- `No-go`: falla cualquiera de los criterios estructurales de legal, mantenimiento, estructurabilidad o margen.

## Anexos operativos

### Vista mínima por semana

| Semana | HU planeadas |
|---|---|
| w1 | `HU-REG-01`, `HU-REG-02`, `HU-USR-01`, `HU-CMP-01` |
| w2 | `HU-REG-02`, `HU-REG-03`, `HU-USR-02`, `HU-USR-03`, `HU-CMP-01`, `HU-CMP-02`, `HU-TEC-01`, `HU-MNT-01` |
| w3 | `HU-REG-03`, `HU-REG-04`, `HU-USR-02`, `HU-USR-03`, `HU-USR-04`, `HU-CMP-02`, `HU-TEC-02`, `HU-TEC-03`, `HU-LEG-01`, `HU-LEG-02`, `HU-BIZ-01`, `HU-MNT-01`, `HU-MNT-02` |
| w4 | `HU-USR-04`, `HU-CMP-03`, `HU-TEC-02`, `HU-TEC-03`, `HU-TEC-04`, `HU-LEG-02`, `HU-LEG-03`, `HU-BIZ-01`, `HU-BIZ-02`, `HU-MNT-02`, `HU-MNT-03`, `HU-MNT-04` |
| w5 | `HU-USR-04`, `HU-LEG-03`, `HU-BIZ-02`, `HU-BIZ-03`, `HU-MNT-05` |
| w6 | Cierre de HU en revisión, consolidación de evidencia y decisión Go / No-go |

### Mercados objetivo

- México
- Colombia
- Argentina
- Chile
- Brasil
- EE.UU.
- Canadá
- España
- Alemania
- Australia o India, a resolver con `HU-REG-01`

### Base competitiva inicial

- TaxJar
- Avalara
- QuickBooks Tax
- Taxfix
- Declarando.es
- Alegra
- Siigo
- CONTPAQi
- Aspel
- Colppy
- Xubio

### Plantilla mínima de evidencia reutilizable

- Fuente:
- Fecha:
- Hallazgo:
- Ubicación del artefacto:
