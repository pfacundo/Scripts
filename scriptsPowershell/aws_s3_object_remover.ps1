foreach($s3_object in [System.IO.File]::ReadLines(".\s3_objects.txt"))
{
aws s3 rm $s3_object --profile dolar >> output_remover.txt

}
