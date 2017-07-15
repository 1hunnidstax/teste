.class public final Lcom/vungle/publisher/ck;
.super Lcom/vungle/publisher/dl;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ck$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dl",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field c:Lcom/vungle/publisher/ck$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vungle/publisher/dl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 40
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    const-string v2, "id"

    iget-object v0, p0, Lcom/vungle/publisher/ck;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    const-string v0, "report_id"

    iget-object v2, p0, Lcom/vungle/publisher/ck;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    :cond_0
    const-string v0, "code"

    iget-object v2, p0, Lcom/vungle/publisher/ck;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-object v1
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/ck;->c:Lcom/vungle/publisher/ck$a;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "errors"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/ck;->a:Ljava/lang/String;

    return-object v0
.end method
