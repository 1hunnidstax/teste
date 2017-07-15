.class public Lcom/vungle/publisher/we$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/we;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/vungle/publisher/vs$c;",
            "Lcom/vungle/publisher/bt$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/we;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/vungle/publisher/vs$c;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 80
    sput-object v0, Lcom/vungle/publisher/we$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/vs$c;->a:Lcom/vungle/publisher/vs$c;

    sget-object v2, Lcom/vungle/publisher/bt$b;->i:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/vungle/publisher/we$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/vs$c;->b:Lcom/vungle/publisher/vs$c;

    sget-object v2, Lcom/vungle/publisher/bt$b;->d:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/vungle/publisher/we$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/vs$c;->c:Lcom/vungle/publisher/vs$c;

    sget-object v2, Lcom/vungle/publisher/bt$b;->j:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/vungle/publisher/we$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/vs$c;->d:Lcom/vungle/publisher/vs$c;

    sget-object v2, Lcom/vungle/publisher/bt$b;->f:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/vungle/publisher/we$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/vs$c;->e:Lcom/vungle/publisher/vs$c;

    sget-object v2, Lcom/vungle/publisher/bt$b;->c:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/vungle/publisher/we$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/vs$c;->f:Lcom/vungle/publisher/vs$c;

    sget-object v2, Lcom/vungle/publisher/bt$b;->l:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/vungle/publisher/we$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/vs$c;->g:Lcom/vungle/publisher/vs$c;

    sget-object v2, Lcom/vungle/publisher/bt$b;->m:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/vungle/publisher/we$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/vs$c;->h:Lcom/vungle/publisher/vs$c;

    sget-object v2, Lcom/vungle/publisher/bt$b;->q:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/vungle/publisher/we$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/vs$c;->i:Lcom/vungle/publisher/vs$c;

    sget-object v2, Lcom/vungle/publisher/bt$b;->e:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/vungle/publisher/we$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/vs$c;->j:Lcom/vungle/publisher/vs$c;

    sget-object v2, Lcom/vungle/publisher/bt$b;->n:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/vungle/publisher/we$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/vs$c;->l:Lcom/vungle/publisher/vs$c;

    sget-object v2, Lcom/vungle/publisher/bt$b;->s:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/vungle/publisher/we$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/vs$c;->k:Lcom/vungle/publisher/vs$c;

    sget-object v2, Lcom/vungle/publisher/bt$b;->t:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/vs;Lcom/vungle/publisher/vz;)Lcom/vungle/publisher/we;
    .locals 5

    .prologue
    .line 100
    new-instance v2, Lcom/vungle/publisher/xk;

    invoke-direct {v2}, Lcom/vungle/publisher/xk;-><init>()V

    iget-object v0, p0, Lcom/vungle/publisher/we$a;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/we;

    iput-object p1, v0, Lcom/vungle/publisher/we;->a:Lcom/vungle/publisher/vs;

    iput-object p2, v0, Lcom/vungle/publisher/we;->b:Lcom/vungle/publisher/vz;

    sget-object v1, Lcom/vungle/publisher/we$a;->a:Ljava/util/EnumMap;

    invoke-virtual {p1}, Lcom/vungle/publisher/vs;->a()Lcom/vungle/publisher/vs$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/bt$b;

    if-nez v1, :cond_0

    const-string v1, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "missing mapping for HttpTransaction requestType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/vs;->a()Lcom/vungle/publisher/vs$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/publisher/vs$c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/publisher/bt$b;->p:Lcom/vungle/publisher/bt$b;

    :cond_0
    iput-object v1, v0, Lcom/vungle/publisher/we;->d:Lcom/vungle/publisher/bt$b;

    iput-object v2, v0, Lcom/vungle/publisher/we;->c:Lcom/vungle/publisher/xk;

    return-object v0
.end method
