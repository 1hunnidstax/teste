.class public final Lcom/vungle/publisher/jc;
.super Lcom/vungle/publisher/dl;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/jc$b;,
        Lcom/vungle/publisher/jc$a;
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
.field a:Lcom/vungle/publisher/jc$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vungle/publisher/dl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 57
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    const-string v2, "id"

    iget-object v0, p0, Lcom/vungle/publisher/jc;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v0, "ad_id"

    iget-object v2, p0, Lcom/vungle/publisher/jc;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    const-string v0, "key"

    iget-object v2, p0, Lcom/vungle/publisher/jc;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "value"

    iget-object v2, p0, Lcom/vungle/publisher/jc;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-object v1
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/jc;->a:Lcom/vungle/publisher/jc$a;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "template_replacements"

    return-object v0
.end method
