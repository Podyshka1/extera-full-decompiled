.class public Lorg/mvel2/sh/command/file/ChangeWorkingDir;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/sh/Command;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/mvel2/sh/ShellSession;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/mvel2/sh/ShellSession;->getEnv()Ljava/util/Map;

    move-result-object v1

    const-string v2, "$CWD"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    array-length v1, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    const-string v1, "."

    const/4 v4, 0x0

    aget-object v5, p2, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 33
    :cond_0
    const-string v1, ".."

    aget-object v5, p2, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    goto :goto_0

    .line 38
    :cond_1
    new-instance p1, Lorg/mvel2/sh/CommandException;

    const-string p2, "already at top-level directory"

    invoke-direct {p1, p2}, Lorg/mvel2/sh/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_2
    aget-object v1, p2, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x2f

    const-string v6, "no such directory: "

    if-ne v1, v5, :cond_4

    .line 42
    new-instance v0, Ljava/io/File;

    aget-object v1, p2, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p2, v0

    goto :goto_0

    .line 44
    :cond_3
    new-instance p1, Lorg/mvel2/sh/CommandException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v4

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mvel2/sh/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_4
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, v4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object p2, v1

    .line 54
    :goto_0
    invoke-virtual {p1}, Lorg/mvel2/sh/ShellSession;->getEnv()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 50
    :cond_5
    new-instance p1, Lorg/mvel2/sh/CommandException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v4

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mvel2/sh/CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    return-object v3
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "changes the working directory"

    return-object v0
.end method

.method public getHelp()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "no help yet"

    return-object v0
.end method
