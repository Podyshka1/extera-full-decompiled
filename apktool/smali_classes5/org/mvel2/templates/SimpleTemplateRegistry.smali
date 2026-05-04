.class public Lorg/mvel2/templates/SimpleTemplateRegistry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/templates/TemplateRegistry;


# instance fields
.field private NAMED_TEMPLATES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mvel2/templates/CompiledTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/templates/SimpleTemplateRegistry;->NAMED_TEMPLATES:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addNamedTemplate(Ljava/lang/String;Lorg/mvel2/templates/CompiledTemplate;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/mvel2/templates/SimpleTemplateRegistry;->NAMED_TEMPLATES:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/mvel2/templates/SimpleTemplateRegistry;->NAMED_TEMPLATES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getNamedTemplate(Ljava/lang/String;)Lorg/mvel2/templates/CompiledTemplate;
    .locals 3

    .line 34
    iget-object v0, p0, Lorg/mvel2/templates/SimpleTemplateRegistry;->NAMED_TEMPLATES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mvel2/templates/CompiledTemplate;

    if-eqz v0, :cond_0

    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lorg/mvel2/templates/TemplateError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no named template exists \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mvel2/templates/TemplateError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/mvel2/templates/SimpleTemplateRegistry;->NAMED_TEMPLATES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/mvel2/templates/SimpleTemplateRegistry;->NAMED_TEMPLATES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
