.class public Lorg/mvel2/sh/command/basic/Set;
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
    .locals 4

    .line 31
    invoke-virtual {p1}, Lorg/mvel2/sh/ShellSession;->getEnv()Ljava/util/Map;

    move-result-object p1

    .line 33
    array-length v0, p2

    if-nez v0, :cond_0

    .line 34
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    array-length v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 42
    new-instance v0, Lorg/mvel2/util/StringAppender;

    invoke-direct {v0}, Lorg/mvel2/util/StringAppender;-><init>()V

    .line 43
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 44
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/mvel2/util/StringAppender;->append(Ljava/lang/String;)Lorg/mvel2/util/StringAppender;

    .line 45
    array-length v2, p2

    if-ge v1, v2, :cond_1

    const-string v2, " "

    invoke-virtual {v0, v2}, Lorg/mvel2/util/StringAppender;->append(Ljava/lang/String;)Lorg/mvel2/util/StringAppender;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 48
    aget-object p2, p2, v1

    invoke-virtual {v0}, Lorg/mvel2/util/StringAppender;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 39
    :cond_4
    new-instance p1, Lorg/mvel2/sh/CommandException;

    const-string p2, "incorrect number of parameters"

    invoke-direct {p1, p2}, Lorg/mvel2/sh/CommandException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "sets an environment variable"

    return-object v0
.end method

.method public getHelp()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
