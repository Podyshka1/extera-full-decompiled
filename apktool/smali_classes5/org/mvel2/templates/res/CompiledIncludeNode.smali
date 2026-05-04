.class public Lorg/mvel2/templates/res/CompiledIncludeNode;
.super Lorg/mvel2/templates/res/Node;
.source "SourceFile"


# instance fields
.field private cFileCache:Lorg/mvel2/templates/CompiledTemplate;

.field private cIncludeExpression:Ljava/io/Serializable;

.field private cPreExpression:Ljava/io/Serializable;

.field private context:Lorg/mvel2/ParserContext;

.field private fileDateStamp:J


# direct methods
.method public constructor <init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    .line 44
    iput p1, p0, Lorg/mvel2/templates/res/Node;->begin:I

    .line 45
    iput-object p2, p0, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 47
    iput p4, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    add-int/lit8 p1, p5, -0x1

    .line 48
    iput p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 49
    iput p5, p0, Lorg/mvel2/templates/res/Node;->end:I

    .line 50
    iput-object p6, p0, Lorg/mvel2/templates/res/CompiledIncludeNode;->context:Lorg/mvel2/ParserContext;

    .line 52
    invoke-static {p3, p4}, Lorg/mvel2/templates/util/TemplateTools;->captureToEOS([CI)I

    move-result p1

    .line 53
    iget-object p2, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iget p3, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    sub-int p4, p1, p3

    invoke-static {p2, p3, p4, p6}, Lorg/mvel2/MVEL;->compileExpression([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p2

    iput-object p2, p0, Lorg/mvel2/templates/res/CompiledIncludeNode;->cIncludeExpression:Ljava/io/Serializable;

    .line 54
    iget-object p2, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    array-length p3, p2

    if-eq p1, p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 55
    iget p3, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    sub-int/2addr p3, p1

    invoke-static {p2, p1, p3, p6}, Lorg/mvel2/MVEL;->compileExpression([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/templates/res/CompiledIncludeNode;->cPreExpression:Ljava/io/Serializable;

    :cond_0
    return-void
.end method

.method private static openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 3

    if-eqz p0, :cond_3

    .line 159
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "File \'"

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' cannot be read"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' exists but is a directory"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' does not exist"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "file parameter is null"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readFile(Lorg/mvel2/templates/TemplateRuntime;Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/String;
    .locals 5

    .line 75
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/mvel2/templates/TemplateRuntime;->getRelPath()Lorg/mvel2/util/ExecutionStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mvel2/util/ExecutionStack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    iget-wide v1, p0, Lorg/mvel2/templates/res/CompiledIncludeNode;->fileDateStamp:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-eqz p2, :cond_1

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/mvel2/templates/res/CompiledIncludeNode;->fileDateStamp:J

    .line 78
    invoke-static {p1, v0}, Lorg/mvel2/templates/res/CompiledIncludeNode;->readInFile(Lorg/mvel2/templates/TemplateRuntime;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/templates/res/CompiledIncludeNode;->context:Lorg/mvel2/ParserContext;

    invoke-static {p1, p2}, Lorg/mvel2/templates/TemplateCompiler;->compileTemplate(Ljava/lang/String;Lorg/mvel2/ParserContext;)Lorg/mvel2/templates/CompiledTemplate;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/templates/res/CompiledIncludeNode;->cFileCache:Lorg/mvel2/templates/CompiledTemplate;

    .line 80
    :cond_1
    iget-object p1, p0, Lorg/mvel2/templates/res/CompiledIncludeNode;->cFileCache:Lorg/mvel2/templates/CompiledTemplate;

    invoke-static {p1, p3, p4}, Lorg/mvel2/templates/TemplateRuntime;->execute(Lorg/mvel2/templates/CompiledTemplate;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static readInFile(Lorg/mvel2/templates/TemplateRuntime;Ljava/io/File;)Ljava/lang/String;
    .locals 9

    .line 88
    const-string v0, "cannot close the stream on template file \'"

    const-string v1, "cannot close the reader on template file \'"

    const-string v2, "\'."

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 93
    :try_start_0
    invoke-static {p1}, Lorg/mvel2/templates/res/CompiledIncludeNode;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 94
    :try_start_1
    invoke-virtual {p0}, Lorg/mvel2/templates/TemplateRuntime;->getRelPath()Lorg/mvel2/util/ExecutionStack;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/mvel2/util/ExecutionStack;->push(Ljava/lang/Object;)V

    .line 96
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x1

    .line 100
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/16 v8, 0xa

    .line 105
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    :goto_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_2
    move-object v4, v6

    goto/16 :goto_7

    :catch_0
    move-exception p0

    :goto_3
    move-object v4, v5

    goto :goto_5

    :catch_1
    :goto_4
    move-object v4, v5

    goto/16 :goto_6

    .line 110
    :cond_1
    invoke-virtual {p0}, Lorg/mvel2/templates/TemplateRuntime;->getRelPath()Lorg/mvel2/util/ExecutionStack;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mvel2/util/ExecutionStack;->pop()Ljava/lang/Object;

    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v5, :cond_2

    .line 130
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-object p0

    .line 132
    :catch_2
    new-instance p0, Lorg/mvel2/templates/TemplateError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mvel2/templates/TemplateError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p0

    .line 125
    :catch_3
    new-instance p0, Lorg/mvel2/templates/TemplateError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mvel2/templates/TemplateError;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_4
    move-exception p0

    move-object v6, v4

    goto :goto_3

    :catch_5
    move-object v6, v4

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v5, v4

    goto :goto_7

    :catch_6
    move-exception p0

    move-object v6, v4

    .line 117
    :goto_5
    :try_start_5
    new-instance v3, Lorg/mvel2/templates/TemplateError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown I/O exception while including \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' (stacktrace nested)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, p0}, Lorg/mvel2/templates/TemplateError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catchall_3
    move-exception p0

    move-object v5, v4

    goto/16 :goto_2

    :catch_7
    move-object v6, v4

    .line 114
    :goto_6
    new-instance p0, Lorg/mvel2/templates/TemplateError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot include template \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\': file not found."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/mvel2/templates/TemplateError;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_7
    if-eqz v4, :cond_3

    .line 123
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_8

    .line 125
    :catch_8
    new-instance p0, Lorg/mvel2/templates/TemplateError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mvel2/templates/TemplateError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_8
    if-eqz v5, :cond_4

    .line 130
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_9

    .line 132
    :catch_9
    new-instance p0, Lorg/mvel2/templates/TemplateError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mvel2/templates/TemplateError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_4
    :goto_9
    throw p0
.end method


# virtual methods
.method public demarcate(Lorg/mvel2/templates/res/Node;[C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public eval(Lorg/mvel2/templates/TemplateRuntime;Lorg/mvel2/templates/util/TemplateOutputStream;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/mvel2/templates/res/CompiledIncludeNode;->cIncludeExpression:Ljava/io/Serializable;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, p3, p4, v1}, Lorg/mvel2/MVEL;->executeExpression(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lorg/mvel2/templates/res/CompiledIncludeNode;->cPreExpression:Ljava/io/Serializable;

    if-eqz v1, :cond_0

    .line 63
    invoke-static {v1, p3, p4}, Lorg/mvel2/MVEL;->executeExpression(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 66
    :cond_0
    iget-object v1, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    if-eqz v1, :cond_1

    .line 67
    invoke-direct {p0, p1, v0, p3, p4}, Lorg/mvel2/templates/res/CompiledIncludeNode;->readFile(Lorg/mvel2/templates/TemplateRuntime;Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lorg/mvel2/templates/TemplateRuntime;->eval(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/mvel2/templates/util/TemplateOutputStream;->append(Ljava/lang/CharSequence;)Lorg/mvel2/templates/util/TemplateOutputStream;

    move-result-object p2

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lorg/mvel2/templates/TemplateRuntime;Lorg/mvel2/templates/util/TemplateOutputStream;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 70
    :cond_1
    invoke-direct {p0, p1, v0, p3, p4}, Lorg/mvel2/templates/res/CompiledIncludeNode;->readFile(Lorg/mvel2/templates/TemplateRuntime;Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lorg/mvel2/MVEL;->eval(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/mvel2/templates/util/TemplateOutputStream;->append(Ljava/lang/CharSequence;)Lorg/mvel2/templates/util/TemplateOutputStream;

    move-result-object p1

    return-object p1
.end method
