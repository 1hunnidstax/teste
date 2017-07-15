.class public final Lcom/vungle/publisher/ko$a;
.super Lcom/vungle/publisher/cr$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cr$a",
        "<",
        "Lcom/vungle/publisher/ki;",
        "Lcom/vungle/publisher/ko;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ko;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vungle/publisher/cr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/vungle/publisher/cr$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected final a(Landroid/database/Cursor;)Lcom/vungle/publisher/ji;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/vungle/publisher/hn;

    const-string v1, "event"

    invoke-static {p1, v1}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/hn;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/cr$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 23
    new-array v0, p1, [Lcom/vungle/publisher/ko;

    return-object v0
.end method

.method public final bridge synthetic c(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/vungle/publisher/cr$a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/ko$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ko;

    return-object v0
.end method

.method public final bridge synthetic d()Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/vungle/publisher/cr$a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
