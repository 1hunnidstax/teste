.class public final Lcom/vungle/publisher/ht$a;
.super Lcom/vungle/publisher/jj$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jj$a",
        "<",
        "Lcom/vungle/publisher/hu;",
        "Lcom/vungle/publisher/ht;",
        "Lcom/vungle/publisher/aea;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final b:Lcom/vungle/publisher/el$b;


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ht;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/vungle/publisher/el$b;->c:Lcom/vungle/publisher/el$b;

    sput-object v0, Lcom/vungle/publisher/ht$a;->b:Lcom/vungle/publisher/el$b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/vungle/publisher/jj$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/ht;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ht;
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/jj$a;->a(Lcom/vungle/publisher/jj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jj;

    .line 92
    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ht;->c:Ljava/lang/String;

    .line 93
    return-object p1
.end method

.method private a(Lcom/vungle/publisher/hu;Lcom/vungle/publisher/aea;)Lcom/vungle/publisher/ht;
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/jj$a;->a(Lcom/vungle/publisher/jk;Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ht;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p2}, Lcom/vungle/publisher/aea;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ht;->c:Ljava/lang/String;

    .line 84
    sget-object v1, Lcom/vungle/publisher/ht$a;->b:Lcom/vungle/publisher/el$b;

    iput-object v1, v0, Lcom/vungle/publisher/ht;->r:Lcom/vungle/publisher/el$b;

    .line 86
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/ht;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/ht$a;->a(Lcom/vungle/publisher/ht;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ht;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Lcom/vungle/publisher/el$b;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/vungle/publisher/ht$a;->b:Lcom/vungle/publisher/el$b;

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/jj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jj;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/ht;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/ht$a;->a(Lcom/vungle/publisher/ht;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ht;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/jk;Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jj;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/hu;

    check-cast p2, Lcom/vungle/publisher/aea;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/ht$a;->a(Lcom/vungle/publisher/hu;Lcom/vungle/publisher/aea;)Lcom/vungle/publisher/ht;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/jp;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/hu;

    check-cast p2, Lcom/vungle/publisher/aea;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/ht$a;->a(Lcom/vungle/publisher/hu;Lcom/vungle/publisher/aea;)Lcom/vungle/publisher/ht;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/jp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jp;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/ht;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/ht$a;->a(Lcom/vungle/publisher/ht;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ht;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 65
    new-array v0, p1, [Lcom/vungle/publisher/ht;

    return-object v0
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/ht$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ht;

    return-object v0
.end method

.method protected final d(I)[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 103
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method
