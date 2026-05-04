.class Lcom/caverock/androidsvg/SVG$SolidColor;
.super Lcom/caverock/androidsvg/SVG$SvgElementBase;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SolidColor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2114
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 0

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1

    .line 2123
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method getNodeName()Ljava/lang/String;
    .locals 1

    .line 2127
    const-string v0, "solidColor"

    return-object v0
.end method
