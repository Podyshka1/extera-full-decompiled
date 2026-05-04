.class public final Landroidx/lifecycle/viewmodel/internal/ViewModelProviders;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/lifecycle/viewmodel/internal/ViewModelProviders;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/viewmodel/internal/ViewModelProviders;

    invoke-direct {v0}, Landroidx/lifecycle/viewmodel/internal/ViewModelProviders;-><init>()V

    sput-object v0, Landroidx/lifecycle/viewmodel/internal/ViewModelProviders;->INSTANCE:Landroidx/lifecycle/viewmodel/internal/ViewModelProviders;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultCreationExtras$lifecycle_viewmodel(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 1

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    instance-of v0, p1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {p1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    sget-object p1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    return-object p1
.end method

.method public final getDefaultFactory$lifecycle_viewmodel(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    instance-of v0, p1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {p1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    sget-object p1, Landroidx/lifecycle/viewmodel/internal/DefaultViewModelProviderFactory;->INSTANCE:Landroidx/lifecycle/viewmodel/internal/DefaultViewModelProviderFactory;

    return-object p1
.end method

.method public final getDefaultKey$lifecycle_viewmodel(Lkotlin/reflect/KClass;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Landroidx/lifecycle/viewmodel/internal/CanonicalName_jvmKt;->getCanonicalName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final unsupportedCreateViewModel$lifecycle_viewmodel()Landroidx/lifecycle/ViewModel;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 51
    const-string v1, "`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error."

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
