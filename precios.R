diario <- read_delim("C:/Users/analista04/Desktop/diario.dat", 
"|", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)

diario=as.data.frame(diario)
diario[,2]=NULL


i=4
while (diario[i,1]!="P")
{
  i=i+1
}
r=i-1

diario_acciones=diario[4:r,]
diario_acciones[,1]=NULL
colnames(diario_acciones)<-c("Acción","Apertura","Cierre","Variación Absoluta","Variación Relativa","Mínimo","Máximo","Promedio")


diario_acciones=diario_acciones[1:3]
diario_acciones[,2]=NULL
diario_acciones=diario_acciones[order(diario_acciones$Acción),]

write.table(format(diario_acciones,nsmall=2), file="C:/Users/analista04/Desktop/precios.txt", append = FALSE, row.names = FALSE, col.names = FALSE, quote = FALSE)

