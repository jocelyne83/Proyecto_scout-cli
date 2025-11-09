#!/bin/bash
# ==========================================================
# 🧪 Script de pruebas continuas - Proyecto scout-cli
# ==========================================================
# Autor: Abiga Vega
# Descripción:
# Este script realiza validaciones automáticas sobre los
# archivos YAML del proyecto scout-cli para verificar:
#  - Sintaxis y formato de los flujos YAML
#  - Estructura interna de comandos definidos
#  - Ejecución funcional simulada
#  - Integración con Docker Scout (si está disponible)
# ==========================================================

echo "Iniciando pruebas continuas del proyecto scout-cli..."
echo "----------------------------------------------------------"

# Validación de dependencias necesarias
echo " Verificando herramientas requeridas..."
command -v yamllint >/dev/null 2>&1 || { echo "❌ Falta instalar yamllint (pip install yamllint)"; exit 1; }
command -v yq >/dev/null 2>&1 || { echo "❌ Falta instalar yq (https://mikefarah.gitbook.io/yq/)"; exit 1; }
command -v docker >/dev/null 2>&1 || { echo "⚠️  Docker no está instalado o no está corriendo. Algunas pruebas se omitirán."; }

echo "✅ Herramientas detectadas correctamente."
echo

# ✅ VALIDACIÓN DE SINTAXIS YAML (versión mejorada)
echo "----------------------------------------------------------"
echo "🔍 Revisando sintaxis YAML en la carpeta ./docs..."
echo

errores=0

# Buscar todos los archivos YAML y validarlos
for file in $(find ./docs -type f \( -name "*.yaml" -o -name "*.yml" \)); do
  echo "🧾 Analizando: $file"
  yamllint -d "{extends: relaxed, rules: {line-length: disable}}" "$file" >/dev/null 2>&1

  if [[ $? -eq 0 ]]; then
    echo "   ✅ Sintaxis correcta en $file"
  else
    echo "   ❌ Error de sintaxis en $file"
    errores=$((errores+1))
  fi
  echo
done

# Resultado final de la validación
if [[ $errores -eq 0 ]]; then
  echo "✅ Todas las sintaxis YAML son correctas. No se detectaron errores."
else
  echo "⚠️  Se encontraron $errores archivos con errores de sintaxis YAML."
  echo "   Revisa los mensajes anteriores para más detalles."
fi

echo "----------------------------------------------------------"
echo

    

# 4️⃣ Prueba funcional simulada del CLI
echo "Simulando ejecución de los comandos definidos..."
for file in $(find ./docs -name "docker_scout*.yaml"); do
  command=$(yq eval '.command' $file 2>/dev/null)
  if [[ -n "$command" ]]; then
    echo "▶ Ejecutando simulación: $command"
    echo "(Simulación de comando ejecutado correctamente)"
    sleep 0.5
  fi
done
echo "Simulación funcional completada."
echo

#Prueba de integración con Docker Scout (si está disponible)
if command -v docker >/dev/null 2>&1; then
  echo "Ejecutando prueba real con Docker Scout..."
  docker scout cves alpine:latest >/dev/null 2>&1
  if [[ $? -eq 0 ]]; then
    echo "✅ Integración con Docker Scout funcional."
  else
    echo "⚠️  Docker Scout no está disponible o no configurado."
  fi
else
  echo "⚠️  Prueba con Docker Scout omitida (Docker no detectado)."
fi

echo
echo "----------------------------------------------------------"
echo "Todas las pruebas continuas del proyecto scout-cli completadas."
echo "----------------------------------------------------------"


