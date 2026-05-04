.class public final Landroidx/camera/camera2/compat/workaround/NoOpTemplateParamsOverride;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/workaround/NoOpTemplateParamsOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/workaround/NoOpTemplateParamsOverride;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/workaround/NoOpTemplateParamsOverride;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/NoOpTemplateParamsOverride;->INSTANCE:Landroidx/camera/camera2/compat/workaround/NoOpTemplateParamsOverride;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverrideParams-xlOpshk(Landroidx/camera/camera2/pipe/RequestTemplate;)Ljava/util/Map;
    .locals 0

    .line 89
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
