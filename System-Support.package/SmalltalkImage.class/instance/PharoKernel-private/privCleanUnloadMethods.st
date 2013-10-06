privCleanUnloadMethods

  " remove class unload methods to avoid their calling during removing of this classes "

  #(#Browser #ChangeList  #DummySoundSystem #FT2Handle 
  #FileContentsBrowser #GZipReadStream #GZipWriteStream #MCVersionReader 
  #MailComposition #Morph #FreeTypeFontProvider
  #DefaultExternalDropHandler #FileStream #Form) 
    do: [:className | (Smalltalk at: className) class removeSelector: #unload. ].