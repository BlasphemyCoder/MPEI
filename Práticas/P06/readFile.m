    function [words] = readFile(fileName)
    %%fprintf(1,'Reading file %s...\n', fileName);
    file = fopen(fileName);
    file_contents = fscanf(file, '%c', inf);
    file_contents = regexprep(file_contents, '[.,:;_><»«()*/$''!?]', '');
    words = strsplit(file_contents);
    fclose(file);
end