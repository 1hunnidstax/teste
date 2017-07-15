.class public final Lcom/vungle/publisher/en$a;
.super Lcom/vungle/publisher/jj$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jj$a",
        "<",
        "Lcom/vungle/publisher/eo;",
        "Lcom/vungle/publisher/en;",
        "Lcom/vungle/publisher/adr;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final c:Lcom/vungle/publisher/el$b;


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/en;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/gh$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/vungle/publisher/el$b;->a:Lcom/vungle/publisher/el$b;

    sput-object v0, Lcom/vungle/publisher/en$a;->c:Lcom/vungle/publisher/el$b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/vungle/publisher/jj$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/en;Landroid/database/Cursor;Z)Lcom/vungle/publisher/en;
    .locals 1

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/jj$a;->a(Lcom/vungle/publisher/jj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jj;

    .line 225
    iget-object v0, p1, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/gh;->a(Landroid/database/Cursor;)V

    .line 226
    const-string v0, "checksum"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/en;->a:Ljava/lang/String;

    .line 227
    return-object p1
.end method

.method private a(Lcom/vungle/publisher/eo;Lcom/vungle/publisher/adr;)Lcom/vungle/publisher/en;
    .locals 3

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/jj$a;->a(Lcom/vungle/publisher/jk;Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/en;

    .line 203
    if-eqz v0, :cond_0

    .line 204
    iget-object v1, p2, Lcom/vungle/publisher/adr;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/en;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/vungle/publisher/adr;->l:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/en;->a(Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/vungle/publisher/adr;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    iput-object v1, v2, Lcom/vungle/publisher/gh;->b:Ljava/lang/String;

    sget-object v1, Lcom/vungle/publisher/en$a;->c:Lcom/vungle/publisher/el$b;

    iput-object v1, v0, Lcom/vungle/publisher/en;->r:Lcom/vungle/publisher/el$b;

    .line 206
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 183
    check-cast p1, Lcom/vungle/publisher/en;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/en$a;->a(Lcom/vungle/publisher/en;Landroid/database/Cursor;Z)Lcom/vungle/publisher/en;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Lcom/vungle/publisher/el$b;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/vungle/publisher/en$a;->c:Lcom/vungle/publisher/el$b;

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/jj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jj;
    .locals 1

    .prologue
    .line 183
    check-cast p1, Lcom/vungle/publisher/en;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/en$a;->a(Lcom/vungle/publisher/en;Landroid/database/Cursor;Z)Lcom/vungle/publisher/en;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/jk;Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jj;
    .locals 1

    .prologue
    .line 183
    check-cast p1, Lcom/vungle/publisher/eo;

    check-cast p2, Lcom/vungle/publisher/adr;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/en$a;->a(Lcom/vungle/publisher/eo;Lcom/vungle/publisher/adr;)Lcom/vungle/publisher/en;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/jp;
    .locals 1

    .prologue
    .line 183
    check-cast p1, Lcom/vungle/publisher/eo;

    check-cast p2, Lcom/vungle/publisher/adr;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/en$a;->a(Lcom/vungle/publisher/eo;Lcom/vungle/publisher/adr;)Lcom/vungle/publisher/en;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/jp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jp;
    .locals 1

    .prologue
    .line 183
    check-cast p1, Lcom/vungle/publisher/en;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/en$a;->a(Lcom/vungle/publisher/en;Landroid/database/Cursor;Z)Lcom/vungle/publisher/en;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 183
    new-array v0, p1, [Lcom/vungle/publisher/en;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vungle/publisher/en$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/en;

    iget-object v1, p0, Lcom/vungle/publisher/en$a;->b:Lcom/vungle/publisher/gh$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/gh$a;->a(Lcom/vungle/publisher/gh$b;)Lcom/vungle/publisher/gh;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    return-object v0
.end method
