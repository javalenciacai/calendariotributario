# Plan Operativo de Investigación

## Propósito del documento

Este documento operacionaliza el contenido de [pitch.md](C:/Trabajo/investigaciones/calendariotributario/pitch.md:1) y lo convierte en un plan de trabajo ejecutable para un ciclo de investigación de 6 semanas bajo la cadencia de Shape Up.

Su función es complementar el pitch, no reemplazarlo. El pitch define la apuesta y los frentes; este plan define cómo ejecutar la investigación, con qué entregables, en qué secuencia, con qué responsables y con qué criterios de salida.

El documento sirve como guía de ejecución semanal, herramienta de alineación entre roles y mecanismo de seguimiento para la betting table de cierre del ciclo.

## Objetivo y preguntas críticas

**Objetivo general**

Determinar si existe una oportunidad real, viable y defendible para construir un producto de calendario tributario global con notificaciones inteligentes, sin construir aún el producto final.

**Preguntas críticas que esta investigación debe responder**

1. ¿Cuáles son los 10 mercados prioritarios que vale la pena estudiar en profundidad y cuáles 3 quedarían mejor posicionados para un MVP?
2. ¿Es posible modelar reglas tributarias suficientemente bien como para generar un calendario personalizado a partir de un set mínimo de datos del usuario?
3. ¿Qué datos mínimos del perfil fiscal son necesarios para determinar obligaciones sin caer en complejidad innecesaria?
4. ¿Con qué frecuencia cambian las fechas y reglas tributarias en los mercados objetivo y cuál es la forma viable de mantener la información actualizada?
5. ¿Cómo deben manejarse los casos ambiguos o sujetos a interpretación para no erosionar la confianza del usuario?
6. ¿Qué modelo de negocio tiene más probabilidad de ser sostenible: B2C, B2B, B2B2C, marketplace o API de datos?
7. ¿Qué riesgos legales, regulatorios y de privacidad deben acotarse antes de considerar una construcción?
8. ¿Qué señales concretas de dolor, disposición a pagar y diferenciación competitiva justificarían un Go al final del ciclo?

**Definición de éxito del ciclo**

La investigación se considera suficientemente completa cuando las preguntas anteriores tienen respuesta basada en evidencia documentada, entregables cerrados por frente y una recomendación Go / No-go defendible en la semana 6.

## Alcance confirmado

- Duración del ciclo: 6 semanas de investigación.
- Metodología de cadencia: Shape Up, con síntesis semanal y decisión final en betting table.
- Tipo de producto investigado: calendario tributario y sistema de recordatorios; no declaración, pago ni asesoría fiscal automatizada.
- Frentes de investigación incluidos:
  - 4.1 Regulación y tributación
  - 4.2 Usuarios
  - 4.3 Competencia
  - 4.4 Técnica
  - 4.5 Legal y cumplimiento
  - 4.6 Modelo de negocio
  - 4.7 Mantenimiento y actualización del calendario
- Mercados objetivo del pitch:
  - Latinoamérica: México, Colombia, Argentina, Chile, Brasil
  - Norteamérica: EE.UU., Canadá
  - Europa: España, Alemania
  - Asia-Pacífico: Australia o India
- Entregables obligatorios del ciclo:
  - Matriz de obligaciones tributarias por país/jurisdicción
  - Documento de Jobs to Be Done y personas
  - Mapa competitivo con oportunidades de diferenciación
  - Documento de arquitectura conceptual y decisiones técnicas
  - Memorando legal
  - Modelo financiero one-pager
  - Modelo operativo de mantenimiento del calendario con costo estimado mensual por país
- Decisión operativa necesaria para ejecutar el plan:
  - El décimo mercado del bloque Asia-Pacífico se cerrará en la semana 1 entre Australia e India, usando como criterio la accesibilidad de fuentes oficiales, claridad regulatoria y relevancia comercial.

## Principios de ejecución

1. Investigar primero la viabilidad del problema y del modelo operativo; no diseñar ni construir el producto final.
2. Mantener el alcance en 10 mercados como máximo durante este ciclo; cualquier expansión queda fuera.
3. Tratar el mantenimiento del calendario como riesgo crítico y priorizarlo sobre detalles de interfaz, branding o integraciones.
4. Trabajar con el modelo mínimo suficiente de datos; durante la investigación se privilegia spreadsheet, matriz y reglas conceptuales sobre implementación definitiva.
5. Priorizar evidencia trazable: fuente oficial, entrevista grabable o documentada, benchmark verificable y hallazgo fechado.
6. No convertir el producto investigado en software de declaración, pago, contabilidad o facturación.
7. No investigar integraciones con Google Calendar, Outlook o software contable antes de validar que existe demanda clara.
8. No asumir estabilidad regulatoria; cada hallazgo debe registrar fecha, fuente y probabilidad de cambio.
9. No investigar blockchain, tokenización ni IA generativa para asesoría fiscal en este ciclo.
10. Toda hipótesis debe tener dueño, fuente de validación, estado y decisión asociada.
11. Cada semana debe cerrar con síntesis, bloqueos, riesgos y ajuste de prioridades para la semana siguiente.
12. Ningún frente se considera terminado si no tiene entregable, criterio de salida y evidencia asociada.

## Frentes de trabajo

### 4.1 Investigación Regulatoria y Tributaria

| Frente | Objetivo | Actividades | Entregable | Dependencias | Responsable | Criterio de salida |
|---|---|---|---|---|---|---|
| 4.1 Regulación y tributación | Entender la estructura de obligaciones tributarias en los mercados objetivo y documentar fuentes oficiales confiables. | Seleccionar y confirmar los 10 mercados.<br>Mapear categorías de impuestos comunes: renta, IVA/VAT/GST, nómina, dividendos/capital, municipales e informativas.<br>Documentar autoridad fiscal, periodicidad, reglas de pertenencia a régimen, fuente oficial de fechas y sanciones por incumplimiento.<br>Identificar si existe calendario oficial descargable, API o canal formal de actualización.<br>Revisar fuentes internacionales comparables: OECD, IBFD, Tax Foundation, CIAT. | Matriz estructurada de obligaciones tributarias por país/jurisdicción, con fuente oficial y notas de riesgo por mercado. | Confirmación del mercado Asia-Pacífico en semana 1.<br>Acceso a fuentes oficiales y apoyo del experto fiscal. | Product Researcher (lead) + Experto fiscal | Los 10 mercados están documentados con fuente oficial, tipos de obligación, periodicidad, criterio de elegibilidad y nota de sanciones; la matriz es utilizable por técnica y mantenimiento. |

### 4.2 Investigación de Usuarios

| Frente | Objetivo | Actividades | Entregable | Dependencias | Responsable | Criterio de salida |
|---|---|---|---|---|---|---|
| 4.2 Usuarios | Validar la existencia del problema, su severidad y la disposición a pagar por segmento. | Definir segmentos: freelancers, PYMES y contadores.<br>Preparar guía de entrevista y criterios de reclutamiento.<br>Realizar 15 entrevistas mínimo: 5 freelancers, 5 dueños de PYMES y 5 contadores.<br>Diseñar y ejecutar encuesta cuantitativa de 200+ respuestas.<br>Identificar herramientas actuales, frecuencia de multas/olvidos, disparadores de confianza y canales preferidos de notificación.<br>Validar si los contadores podrían funcionar como canal B2B2C o multi-cliente. | Documento de Jobs to Be Done, personas, síntesis de dolores, objeciones de confianza y señales de disposición a pagar. | Guía de entrevistas aprobada en semana 1.<br>Reclutamiento suficiente en semanas 1-3. | UX Researcher + Product Researcher | Se completaron las entrevistas objetivo, la encuesta cuantitativa tiene muestra suficiente y existe síntesis clara de dolor, comportamiento actual y willingness to pay por segmento. |

### 4.3 Investigación Competitiva

| Frente | Objetivo | Actividades | Entregable | Dependencias | Responsable | Criterio de salida |
|---|---|---|---|---|---|---|
| 4.3 Competencia | Entender el panorama de soluciones y ubicar el espacio diferenciador del producto. | Analizar competidores directos: TaxJar, Avalara, QuickBooks Tax, Taxfix y Declarando.es.<br>Analizar jugadores regionales en LATAM: Alegra, Siigo, CONTPAQi, Aspel, Colppy y Xubio.<br>Documentar cobertura geográfica, foco de producto, pricing, presencia de notificaciones, multi-jurisdicción y quejas recurrentes de usuarios.<br>Identificar vacíos del mercado: recordatorios proactivos, enfoque agnóstico al país, foco en personas físicas y PYMES. | Mapa competitivo con comparativa funcional, pricing y oportunidades de diferenciación. | Acceso a pricing público, demos, sitios web y reseñas de usuarios. | Product Researcher | Existe matriz comparativa de competidores, 2 o más vectores claros de diferenciación potencial y benchmark de pricing utilizable por negocio. |

### 4.4 Investigación Técnica

| Frente | Objetivo | Actividades | Entregable | Dependencias | Responsable | Criterio de salida |
|---|---|---|---|---|---|---|
| 4.4 Técnica | Evaluar si la solución es técnicamente factible y definir la arquitectura mínima viable para un eventual MVP. | Definir la estructura genérica de una obligación tributaria y sus campos mínimos.<br>Explorar opciones para modelar elegibilidad: reglas en código, motores de reglas o estructuras declarativas.<br>Evaluar disponibilidad de fuentes abiertas y necesidad de curación manual.<br>Comparar proveedores y opciones para notificaciones: email, SMS, push y WhatsApp.<br>Evaluar stack preliminar para MVP: backend, base de datos, frontend y hosting.<br>Traducir requisitos de mantenimiento en implicaciones técnicas de versionado, audit log y niveles de confianza del dato. | Documento de arquitectura conceptual y matriz de decisiones técnicas con opciones, criterios y recomendación. | Hallazgos iniciales de 4.1 y 4.7 sobre modelado de reglas, formatos y frecuencia de cambios. | Engineer (técnico) | Existe una arquitectura conceptual mínima, una propuesta de modelo de datos, una ruta técnica viable para reglas y notificaciones y una lista explícita de riesgos técnicos abiertos. |

### 4.5 Investigación Legal y de Cumplimiento

| Frente | Objetivo | Actividades | Entregable | Dependencias | Responsable | Criterio de salida |
|---|---|---|---|---|---|---|
| 4.5 Legal y compliance | Determinar si el servicio puede operar como producto informativo sin incurrir en riesgo legal desproporcionado. | Definir el borde entre información fiscal y asesoría fiscal en los mercados objetivo.<br>Revisar exposición por datos incorrectos, errores de fecha y limitación de responsabilidad.<br>Mapear obligaciones de privacidad y retención de datos: GDPR, CCPA, LGPD, Ley 1581 y equivalentes.<br>Investigar licencias, registros o restricciones para operar por país.<br>Revisar safe harbors, disclaimers y términos de servicio comparables en soluciones existentes.<br>Evaluar si un botón o red de referidos a contadores reduce riesgo legal y abre oportunidad comercial. | Memorando legal con riesgos, recomendaciones, disclaimers base y restricciones de operación. | Descripción funcional mínima del servicio desde 4.4 y priorización de mercados desde 4.1. | Abogado fiscal + Product Researcher | El memorando clasifica el riesgo legal por mercado y deja claro si el producto puede presentarse como informativo, qué condiciones mínimas debe cumplir y qué riesgos bloquearían un Go. |

### 4.6 Investigación de Modelo de Negocio

| Frente | Objetivo | Actividades | Entregable | Dependencias | Responsable | Criterio de salida |
|---|---|---|---|---|---|---|
| 4.6 Modelo de negocio | Determinar si existe una forma sostenible y escalable de monetizar el servicio. | Evaluar opciones: freemium B2C, SaaS B2B para contadores, B2B2C, marketplace de contadores y API de datos tributarios.<br>Levantar benchmarks de pricing y churn de referencias comparables.<br>Estimar TAM por país clave y por segmento.<br>Calcular CAC y LTV preliminares por canal potencial.<br>Integrar hallazgos de usuarios, competencia, legal y mantenimiento para construir escenarios conservador, base y optimista. | Modelo financiero one-pager con escenarios, riesgos clave y recomendación del modelo más prometedor. | Resultados de 4.2, 4.3, 4.5 y 4.7. | Product Researcher + Engineer | Existe un modelo financiero preliminar con supuestos explícitos, márgenes estimados, sensibilidad por costo de mantenimiento y una recomendación clara de modelo inicial. |

### 4.7 Investigación de Mantenimiento y Actualización del Calendario

| Frente | Objetivo | Actividades | Entregable | Dependencias | Responsable | Criterio de salida |
|---|---|---|---|---|---|---|
| 4.7 Mantenimiento y actualización del calendario (prioridad crítica) | Entender cómo mantener el calendario preciso y vigente sin que el costo operativo destruya la viabilidad del negocio. | Catalogar tipos de cambio: fechas, periodicidad, nuevas obligaciones, derogaciones, cambios de elegibilidad y suspensiones temporales.<br>Medir frecuencia histórica de cambios por país y mapear canales oficiales de publicación.<br>Evaluar opciones operativas: curación manual, scraping, monitoreo automatizado, alianzas, comunidad experta y modelo híbrido.<br>Definir flujo de actualización, revisión humana, versionado, audit log y notificación a usuarios afectados.<br>Evaluar uso de agentes de IA para extracción documental y monitoreo, siempre con validación humana.<br>Comparar costo de automatización, terceros y equipo humano.<br>Ejecutar PoC del agente de extracción de PDFs sobre 50 resoluciones reales de 3 países. | Propuesta de modelo operativo de mantenimiento, costo estimado mensual por país, definición del flujo de actualización y reporte de resultados del PoC. | Insumos de 4.1 para fuentes oficiales.<br>Apoyo técnico de 4.4 para evaluar herramientas y arquitectura.<br>Revisión legal de 4.5 para uso de fuentes y comunicaciones. | Engineer + Experto fiscal + Product Researcher | Existe un modelo operativo defendible, con costo mensual estimado por país, límites de automatización claros, criterios de validación humana y señal concreta de si el mantenimiento es o no el cuello de botella del negocio. |

## Cronograma de 6 semanas

| Semana | Objetivo | Actividades | Entregables | Roles involucrados | Riesgos |
|---|---|---|---|---|---|
| Semana 1 | Delimitar el ciclo y preparar la ejecución. | Confirmar equipo, cadencia y responsables.<br>Elegir el mercado Asia-Pacífico entre Australia e India.<br>Crear trackers de hipótesis, evidencia y bloqueos.<br>Definir guía de entrevistas y plan de reclutamiento.<br>Levantar estructura inicial de la matriz tributaria.<br>Hacer shortlist de competidores y fuentes oficiales por país.<br>Definir muestra del PoC de mantenimiento y extracción documental. | Plan de reclutamiento.<br>Guía de entrevistas.<br>Template de matriz tributaria.<br>Lista de países final.<br>Tracker de hipótesis y evidencia.<br>Lista corta de competidores y fuentes oficiales. | Product Researcher, UX Researcher, Experto fiscal, Engineer | Deriva de alcance.<br>Retraso en reclutamiento.<br>Fuentes oficiales difíciles de ubicar en 1 o más mercados. |
| Semana 2 | Obtener primeros hallazgos de regulación, usuarios y competencia. | Completar mapeo regulatorio de los primeros 5 países.<br>Realizar primeras 5 entrevistas.<br>Iniciar benchmark de pricing y features de competidores.<br>Mapear canales oficiales de cambio tributario y formatos documentales.<br>Definir primera versión del modelo de datos conceptual.<br>Preparar lista de abogados y proveedores a contactar. | Avance de matriz tributaria para 5 países.<br>Notas sintetizadas de 5 entrevistas.<br>Matriz competitiva preliminar.<br>Mapa inicial de fuentes de actualización.<br>Borrador del modelo de datos. | Product Researcher, UX Researcher, Experto fiscal, Engineer | Hallazgos dispersos sin síntesis.<br>Dificultad para comparar competidores regionales.<br>Complejidad temprana del modelo de datos. |
| Semana 3 | Profundizar y cerrar el grueso del descubrimiento cualitativo. | Completar las entrevistas restantes hasta llegar al mínimo objetivo.<br>Completar mapeo regulatorio de los 10 mercados.<br>Levantar frecuencia histórica de cambios por país.<br>Iniciar consultas legales con 1-2 abogados fiscales.<br>Contactar proveedores de datos tributarios para cotizaciones.<br>Diseñar encuesta cuantitativa y preparar lanzamiento.<br>Profundizar la evaluación técnica de reglas, notificaciones y stack. | Matriz tributaria completa.<br>Síntesis cualitativa de entrevistas.<br>Inventario de frecuencia de cambios y canales oficiales.<br>Brief legal inicial.<br>Lista de proveedores contactados.<br>Encuesta lista para lanzar. | Product Researcher, UX Researcher, Experto fiscal, Engineer, Abogado fiscal | Demora en respuesta de abogados o proveedores.<br>Calidad irregular de fuentes históricas.<br>Sesgo de muestra en entrevistas. |
| Semana 4 | Validar técnica, legal y mantenimiento con evidencia más fuerte. | Ejecutar encuesta cuantitativa.<br>Completar benchmark competitivo y pricing.<br>Consolidar recomendaciones legales por mercado.<br>Ejecutar PoC de extracción de PDFs sobre 50 resoluciones de 3 países.<br>Evaluar precisión, costo y necesidad de revisión humana.<br>Comparar opciones operativas de mantenimiento.<br>Refinar arquitectura conceptual con hallazgos de mantenimiento. | Resultados preliminares de encuesta.<br>Mapa competitivo final.<br>Borrador del memorando legal.<br>Reporte del PoC de extracción documental.<br>Borrador de arquitectura conceptual. | UX Researcher, Product Researcher, Engineer, Experto fiscal, Abogado fiscal | Precisión baja del PoC.<br>Encuesta con muestra insuficiente.<br>Riesgo legal mayor al esperado. |
| Semana 5 | Sintetizar, modelar negocio y seleccionar dirección para MVP. | Analizar encuesta y cruzarla con entrevistas.<br>Construir JTBD y personas finales.<br>Definir los 3 países candidatos para MVP.<br>Estimar costo mensual de mantenimiento por país.<br>Construir modelo financiero con escenarios conservador, base y optimista.<br>Definir propuesta de modelo operativo de mantenimiento.<br>Preparar borradores de decisión Go / No-go. | Documento JTBD y personas.<br>Modelo operativo de mantenimiento.<br>Estimación de costo por país.<br>Modelo financiero one-pager.<br>Lista de 3 países candidatos para MVP. | Product Researcher, UX Researcher, Engineer, Experto fiscal | Conclusiones contradictorias entre frentes.<br>Costos de mantenimiento demasiado altos.<br>Sin diferenciación competitiva suficiente. |
| Semana 6 | Consolidar hallazgos y tomar decisión. | Integrar todos los entregables en un documento de decisión.<br>Evaluar criterios Go / No-go uno por uno.<br>Documentar riesgos remanentes, supuestos y bloqueos.<br>Preparar narrativa para betting table.<br>Si el resultado es Go, esbozar el pitch de construcción del MVP. | Documento de decisión final.<br>Checklist Go / No-go completado.<br>Recomendación final para betting table.<br>Borrador de pitch de construcción del MVP, si aplica. | Product Researcher, Engineer, Experto fiscal, Abogado fiscal, UX Researcher | Falta de evidencia suficiente para decidir.<br>Diferencias entre stakeholders sobre el umbral de Go.<br>Demasiados riesgos abiertos sin priorización. |

## Dependencias y secuencia

**Frentes que pueden correr en paralelo desde el inicio**

- 4.1 Regulación y tributación
- 4.2 Usuarios
- 4.3 Competencia
- 4.7 Mantenimiento y actualización del calendario

**Frentes que dependen de hallazgos previos**

- 4.4 Técnica depende de insumos iniciales de 4.1 y 4.7 para decidir cómo modelar reglas, fuentes y versionado.
- 4.5 Legal depende de la definición funcional mínima del servicio y de la priorización de mercados de 4.1.
- 4.6 Modelo de negocio depende de señales de 4.2, benchmarks de 4.3, restricciones de 4.5 y costos de 4.7.

**Secuencia recomendada**

1. Delimitar países, trackers y muestra de investigación en semana 1.
2. Cerrar regulación base, entrevistas y benchmark inicial entre semanas 2 y 3.
3. Usar esos hallazgos para profundizar técnica, legal y mantenimiento entre semanas 3 y 4.
4. Modelar negocio solo cuando ya exista señal de dolor, pricing, restricciones legales y costo operativo.
5. Tomar la decisión Go / No-go únicamente después de integrar el resultado de 4.7, ya que este frente condiciona la viabilidad total.

**Dependencias críticas**

- 4.1 alimenta directamente a 4.4 y 4.7.
- 4.7 alimenta directamente a 4.4, 4.5, 4.6 y al Go / No-go.
- 4.2 y 4.3 alimentan pricing, segmentación y canal en 4.6.
- 4.5 puede bloquear el Go aun si el resto de frentes es positivo.

## Evidencia y tracking

La investigación se administrará con una tabla viva, actualizada al menos una vez por semana durante el cierre de síntesis. Los estados válidos son `Pendiente`, `En curso`, `Validada`, `Refutada` y `Bloqueada`.

| Hipótesis | Fuente de validación | Estado | Dueño | Fecha | Hallazgo | Impacto |
|---|---|---|---|---|---|---|
| El problema de olvido y cumplimiento tardío es frecuente en freelancers y PYMES. | Entrevistas + encuesta | Pendiente | UX Researcher | Por completar | Por completar | Define si existe dolor suficiente para un producto independiente. |
| Es posible modelar obligaciones tributarias de forma estructurada en al menos 5 de los 10 mercados. | Matriz regulatoria + revisión técnica | Pendiente | Experto fiscal + Engineer | Por completar | Por completar | Determina si el calendario personalizado es técnicamente viable. |
| Los usuarios confiarán más si cada alerta referencia una fuente oficial. | Entrevistas + benchmark competitivo | Pendiente | Product Researcher | Por completar | Por completar | Afecta propuesta de valor y diseño de la experiencia. |
| El mantenimiento del calendario puede operarse a un costo mensual viable por país. | Benchmark operativo + PoC + cotizaciones | Pendiente | Engineer | Por completar | Por completar | Condiciona el margen del negocio y el Go / No-go. |
| El servicio puede operar como producto informativo con disclaimers adecuados. | Consulta legal + benchmark de términos de servicio | Pendiente | Abogado fiscal | Por completar | Por completar | Define viabilidad legal inicial. |
| Los contadores pueden funcionar como canal de distribución o cuenta multi-cliente. | Entrevistas + benchmark competitivo | Pendiente | Product Researcher | Por completar | Por completar | Abre o cierra un canal B2B/B2B2C. |
| Existe al menos un vector claro de diferenciación frente a soluciones actuales. | Benchmark competitivo + síntesis de usuarios | Pendiente | Product Researcher | Por completar | Por completar | Soporta la tesis de mercado. |

**Reglas de operación del tracking**

- Cada hipótesis debe tener evidencia adjunta o referencia directa al entregable que la soporta.
- Ninguna hipótesis puede pasar a `Validada` sin una fuente verificable y una nota de hallazgo.
- Las hipótesis `Bloqueadas` deben escalarse en el cierre semanal con decisión explícita.
- Los cambios de estado deben registrar fecha y responsable.

## Criterios Go / No-go

La decisión final se tomará con el siguiente checklist operativo. Ningún criterio se marca como cumplido sin evidencia explícita adjunta.

| Check | Criterio | Umbral de Go | Evidencia requerida | Dueño |
|---|---|---|---|---|
| [ ] | Confirmación del problema | Más del 70% de entrevistados confirma dolor real y recurrente. | Síntesis de entrevistas + encuesta | UX Researcher |
| [ ] | Disposición a pagar | Willingness to Pay promedio superior a USD 10/mes. | Encuesta + entrevistas | Product Researcher |
| [ ] | Estructurabilidad de datos | Al menos 5 de los 10 mercados pueden modelarse con suficiente claridad. | Matriz tributaria + revisión técnica | Experto fiscal + Engineer |
| [ ] | Riesgo legal manejable | El riesgo queda clasificado como manejable con disclaimers, términos y límites operativos claros. | Memorando legal | Abogado fiscal |
| [ ] | Negocio sostenible | El modelo tiene margen positivo en escenario conservador a 18 meses. | Modelo financiero | Product Researcher |
| [ ] | Diferenciación competitiva | Existen al menos 2 vectores claros de diferenciación defendible. | Mapa competitivo + síntesis de usuarios | Product Researcher |
| [ ] | Mantenimiento viable | Existe modelo operativo de mantenimiento con costo mensual estimado y defendible. | Documento de mantenimiento + PoC | Engineer |
| [ ] | Fuente de actualización por país MVP | Cada país candidato a MVP tiene al menos una estrategia clara de actualización. | Matriz de fuentes + modelo operativo | Experto fiscal + Engineer |

**Criterio de decisión**

- `Go`: todos los criterios críticos están cumplidos y no existen riesgos bloqueantes abiertos en legal o mantenimiento.
- `No-go`: falla uno de los criterios estructurales del negocio: mantenimiento, legal, estructurabilidad de datos o margen económico.
- `Go condicionado`: existe señal positiva general, pero queda una validación puntual de alto impacto con fecha y dueño definidos.

## Riesgos y mitigaciones

| Riesgo | Impacto | Mitigación | Dueño |
|---|---|---|---|
| El costo de mantener el calendario actualizado por país es demasiado alto. | Rompe el margen y vuelve inviable el negocio. | Priorizar 4.7 desde semana 1, ejecutar PoC, cotizar proveedores y comparar manual vs. híbrido vs. automatizado. | Engineer |
| El producto cruza la línea hacia asesoría fiscal regulada. | Exposición legal o necesidad de licencias no previstas. | Obtener memorando legal temprano, limitar positioning del producto y diseñar disclaimers base. | Abogado fiscal |
| El alcance se expande a más países o a automatización de declaración. | Dilución del foco y atraso del ciclo. | Mantener checklist de no-gos y revisar desvíos en cada cierre semanal. | Product Researcher |
| Las fuentes oficiales son ambiguas, tardías o difíciles de monitorear. | Baja precisión del calendario y pérdida de confianza. | Priorizar mercados con mejor trazabilidad, registrar nivel de confianza del dato y diseñar revisión humana. | Experto fiscal |
| El PoC de extracción documental tiene precisión insuficiente. | Debilita la hipótesis de automatización parcial. | Mantener validación humana obligatoria y comparar costo contra curación manual. | Engineer |
| No se logra reclutar suficientes usuarios o contadores. | Debilita evidencia de mercado y pricing. | Iniciar reclutamiento en semana 1, usar múltiples canales y priorizar segmentos críticos. | UX Researcher |
| La diferenciación frente a competidores es débil. | El producto puede ser irrelevante o fácilmente copiable. | Cruzar hallazgos de usuarios con benchmark competitivo y forzar una tesis explícita de diferenciación en semana 5. | Product Researcher |

## Equipo y responsabilidades

| Rol | Responsabilidad principal | Entregables a su cargo | Ritmo de participación |
|---|---|---|---|
| Product Researcher (lead) | Coordinar el ciclo, integrar hallazgos, priorizar trabajo y preparar la decisión final. | Síntesis semanal, matriz de hipótesis, mapa competitivo, modelo de negocio, documento de decisión final. | Tiempo completo durante las 6 semanas. |
| Experto fiscal | Traducir regulación a estructura utilizable, validar fuentes y revisar viabilidad tributaria por mercado. | Matriz tributaria, revisión de criterios de elegibilidad, análisis de sanciones y soporte al modelo de mantenimiento. | Participación continua, con mayor carga en semanas 1-5. |
| Engineer (técnico) | Evaluar factibilidad técnica, modelado de reglas, arquitectura y operación del mantenimiento. | Documento de arquitectura conceptual, evaluación de stack, PoC de extracción documental, costo operativo de mantenimiento. | Dedicación del 50% durante el ciclo. |
| Abogado fiscal | Acotar exposición legal, privacidad, disclaimers y límites de operación. | Memorando legal, recomendaciones de disclaimers, restricciones operativas por mercado. | Consultoría puntual, concentrada en semanas 3-5. |
| UX Researcher | Diseñar y ejecutar la investigación con usuarios, sintetizar dolores y validar disposición a pagar. | Guía de entrevistas, reclutamiento, entrevistas, encuesta, JTBD y personas. | Participación continua, con mayor carga en semanas 1-5. |

**Cadencia de coordinación**

- Sync operativo semanal: revisión de avances, bloqueos y cambios de prioridad.
- Revisión de evidencia semanal: actualización del tracker de hipótesis y de los criterios Go / No-go.
- Cierre de semana 6: preparación de betting table y decisión final.

## Anexos

### Checklist de entrevistas

- Confirmar segmento del entrevistado antes de la sesión.
- Registrar país, tipo de contribuyente y complejidad fiscal actual.
- Preguntar cómo controla hoy fechas y obligaciones tributarias.
- Identificar olvidos previos, multas, recargos o errores de cumplimiento.
- Registrar herramientas actuales y carencias percibidas.
- Explorar qué necesitaría para confiar en alertas tributarias automatizadas.
- Medir disposición a pagar y condiciones para hacerlo.
- Preguntar por canales preferidos de recordatorio: email, SMS, push, WhatsApp.
- En contadores, validar si usarían un panel multi-cliente y bajo qué modelo.
- Cerrar cada entrevista con una clasificación de severidad del problema y citas textuales útiles.

### Lista de países

| Región | País | Estado en el plan |
|---|---|---|
| Latinoamérica | México | Incluido |
| Latinoamérica | Colombia | Incluido |
| Latinoamérica | Argentina | Incluido |
| Latinoamérica | Chile | Incluido |
| Latinoamérica | Brasil | Incluido |
| Norteamérica | EE.UU. | Incluido |
| Norteamérica | Canadá | Incluido |
| Europa | España | Incluido |
| Europa | Alemania | Incluido |
| Asia-Pacífico | Australia o India | Resolver en semana 1 según accesibilidad de fuentes y relevancia comercial |

### Lista de competidores

| Tipo | Nombre | Nota de análisis |
|---|---|---|
| Directo | TaxJar | Referencia de automatización fiscal en EE.UU. |
| Directo | Avalara | Referencia enterprise/global. |
| Directo | QuickBooks Tax | Referencia de módulo fiscal dentro de suite contable. |
| Directo | Taxfix | Referencia consumer para renta simplificada. |
| Directo | Declarando.es | Referencia de freelancers en España. |
| Regional LATAM | Alegra | Referencia de software administrativo con componente fiscal. |
| Regional LATAM | Siigo | Referencia de software empresarial en Colombia. |
| Regional LATAM | CONTPAQi | Referencia local en México. |
| Regional LATAM | Aspel | Referencia local en México. |
| Regional LATAM | Colppy | Referencia local en Argentina. |
| Regional LATAM | Xubio | Referencia local en Argentina. |

### Fuentes de referencia

**Fuentes internacionales**

- OECD Tax Database
- IBFD Country Surveys
- Tax Foundation International Tax Competitiveness Index
- CIAT
- World Bank, sección histórica de impuestos

**Fuentes oficiales por país a levantar en la matriz**

- México: SAT y DOF
- Colombia: DIAN
- Argentina: AFIP
- Chile: SII
- Brasil: Receita Federal
- EE.UU.: IRS
- España: AEAT
- Canadá: CRA
- Australia o India: autoridad fiscal a confirmar en semana 1

**Fuentes para mantenimiento y monitoreo**

- Calendarios oficiales en HTML, PDF, iCal o boletines
- Resoluciones, decretos y diarios oficiales
- Proveedores de datos fiscales
- Referencias operativas de competidores

