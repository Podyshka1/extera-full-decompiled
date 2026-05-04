.class public Lorg/mvel2/sh/command/file/DirList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/sh/Command;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/mvel2/sh/ShellSession;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 30
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lorg/mvel2/sh/ShellSession;->getEnv()Ljava/util/Map;

    move-result-object v0

    const-string v1, "$CWD"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 39
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Total "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 42
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p2, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    aget-object v3, p1, v2

    .line 43
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    goto :goto_1

    .line 47
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 49
    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-object v1

    .line 33
    :cond_3
    new-instance p2, Lorg/mvel2/sh/CommandException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot list directory : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mvel2/sh/ShellSession;->getEnv()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a directory"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/mvel2/sh/CommandException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "performs a list of files and directories in the current working dir."

    return-object v0
.end method

.method public getHelp()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "no help yet"

    return-object v0
.end method
