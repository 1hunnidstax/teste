.class public final Lcom/vungle/publisher/cs;
.super Lcom/vungle/publisher/dl;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/cs$a;
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
.field a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field d:Lcom/vungle/publisher/cs$a;
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
    invoke-direct {p0}, Lcom/vungle/publisher/dl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    const-string v1, "ad_report_id"

    iget-object v2, p0, Lcom/vungle/publisher/cs;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    :cond_0
    const-string v1, "name"

    iget-object v2, p0, Lcom/vungle/publisher/cs;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "value"

    iget-object v2, p0, Lcom/vungle/publisher/cs;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-object v0
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vungle/publisher/cs;->d:Lcom/vungle/publisher/cs$a;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "ad_report_extra"

    return-object v0
.end method

.method protected final m()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-super {p0}, Lcom/vungle/publisher/dl;->m()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    const-string v1, "ad_report_id"

    iget-object v2, p0, Lcom/vungle/publisher/cs;->a:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 67
    const-string v1, "name"

    iget-object v2, p0, Lcom/vungle/publisher/cs;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 68
    const-string v1, "value"

    iget-object v2, p0, Lcom/vungle/publisher/cs;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 69
    return-object v0
.end method
