.class public final Lcom/vungle/publisher/abg$b$a$a;
.super Lcom/vungle/publisher/abw;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/abg$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/abw",
        "<",
        "Lcom/vungle/publisher/abg$b$a;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/pn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/vungle/publisher/abw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/abg$b$a;
    .locals 3

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    iget-object v1, p0, Lcom/vungle/publisher/abg$b$a$a;->a:Lcom/vungle/publisher/pn;

    invoke-interface {v1}, Lcom/vungle/publisher/pn;->h()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 414
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lez v2, :cond_1

    .line 415
    :cond_0
    new-instance v0, Lcom/vungle/publisher/abg$b$a;

    invoke-direct {v0}, Lcom/vungle/publisher/abg$b$a;-><init>()V

    .line 416
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/abg$b$a;->a:Ljava/lang/Integer;

    .line 417
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/abg$b$a;->b:Ljava/lang/Integer;

    .line 419
    :cond_1
    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 404
    new-array v0, p1, [Lcom/vungle/publisher/abg$b$a;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 404
    new-instance v0, Lcom/vungle/publisher/abg$b$a;

    invoke-direct {v0}, Lcom/vungle/publisher/abg$b$a;-><init>()V

    return-object v0
.end method
