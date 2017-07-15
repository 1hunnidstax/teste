.class public final Lcom/vungle/publisher/adx$a;
.super Lcom/vungle/publisher/add$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/adx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/add$a",
        "<",
        "Lcom/vungle/publisher/adx;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected f:Lcom/vungle/publisher/abt$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vungle/publisher/add$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/vungle/publisher/p;)Lcom/vungle/publisher/adx;
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Lcom/vungle/publisher/add$a;->c()Lcom/vungle/publisher/add;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/adx;

    .line 40
    invoke-virtual {p2}, Lcom/vungle/publisher/p;->getPlacement()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/vungle/publisher/ags;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iput-object v1, v0, Lcom/vungle/publisher/adx;->i:Ljava/lang/String;

    .line 44
    :cond_0
    invoke-virtual {p2}, Lcom/vungle/publisher/p;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/publisher/abt$a;->a(Ljava/util/Map;)Lcom/vungle/publisher/abt;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adx;->g:Lcom/vungle/publisher/abt;

    .line 45
    iput-object p1, v0, Lcom/vungle/publisher/adx;->h:Ljava/lang/String;

    .line 46
    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    new-array v0, p1, [Lcom/vungle/publisher/adx;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/vungle/publisher/adx;

    invoke-direct {v0}, Lcom/vungle/publisher/adx;-><init>()V

    return-object v0
.end method
