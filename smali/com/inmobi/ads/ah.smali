.class final Lcom/inmobi/ads/ah;
.super Ljava/lang/Object;
.source "NativeStrandTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ah$a;,
        Lcom/inmobi/ads/ah$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/ads/ah$b;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/inmobi/ads/ah$a;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/inmobi/ads/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ah;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/ah$b;Ljava/lang/String;ILcom/inmobi/ads/ah$a;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/ah$b;",
            "Ljava/lang/String;",
            "I",
            "Lcom/inmobi/ads/ah$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/inmobi/ads/ah;->b:Lcom/inmobi/ads/ah$b;

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ah;->c:Ljava/lang/String;

    .line 87
    iput p3, p0, Lcom/inmobi/ads/ah;->d:I

    .line 88
    iput-object p4, p0, Lcom/inmobi/ads/ah;->e:Lcom/inmobi/ads/ah$a;

    .line 89
    iput-object p5, p0, Lcom/inmobi/ads/ah;->f:Ljava/util/Map;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/inmobi/ads/ah$a;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/inmobi/ads/ah$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    sget-object v1, Lcom/inmobi/ads/ah$b;->b:Lcom/inmobi/ads/ah$b;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/ah;-><init>(Lcom/inmobi/ads/ah$b;Ljava/lang/String;ILcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 80
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/inmobi/ads/ah$a;
    .locals 2

    .prologue
    .line 137
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/inmobi/ads/ah$a;->a:Lcom/inmobi/ads/ah$a;

    .line 181
    :goto_0
    return-object v0

    .line 138
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 141
    sget-object v0, Lcom/inmobi/ads/ah$a;->a:Lcom/inmobi/ads/ah$a;

    goto :goto_0

    .line 138
    :sswitch_0
    const-string v1, "unknown"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "load"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "client_fill"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "Impression"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "VideoImpression"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "page_view"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "click"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v1, "firstQuartile"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v1, "midpoint"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_a
    const-string v1, "thirdQuartile"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_b
    const-string v1, "complete"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "creativeView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "fullscreen"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "exitFullscreen"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "mute"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "unmute"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "pause"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "resume"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "error"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "IAS_VIEWABILITY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x15

    goto/16 :goto_1

    .line 143
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/ah$a;->b:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 145
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/ah$a;->c:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 147
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/ah$a;->d:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 149
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/ah$a;->g:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 151
    :pswitch_4
    sget-object v0, Lcom/inmobi/ads/ah$a;->e:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 153
    :pswitch_5
    sget-object v0, Lcom/inmobi/ads/ah$a;->f:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 155
    :pswitch_6
    sget-object v0, Lcom/inmobi/ads/ah$a;->h:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 157
    :pswitch_7
    sget-object v0, Lcom/inmobi/ads/ah$a;->i:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 159
    :pswitch_8
    sget-object v0, Lcom/inmobi/ads/ah$a;->j:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 161
    :pswitch_9
    sget-object v0, Lcom/inmobi/ads/ah$a;->k:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 163
    :pswitch_a
    sget-object v0, Lcom/inmobi/ads/ah$a;->l:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 165
    :pswitch_b
    sget-object v0, Lcom/inmobi/ads/ah$a;->m:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 167
    :pswitch_c
    sget-object v0, Lcom/inmobi/ads/ah$a;->n:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 169
    :pswitch_d
    sget-object v0, Lcom/inmobi/ads/ah$a;->o:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 171
    :pswitch_e
    sget-object v0, Lcom/inmobi/ads/ah$a;->p:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 173
    :pswitch_f
    sget-object v0, Lcom/inmobi/ads/ah$a;->q:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 175
    :pswitch_10
    sget-object v0, Lcom/inmobi/ads/ah$a;->r:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 177
    :pswitch_11
    sget-object v0, Lcom/inmobi/ads/ah$a;->s:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 179
    :pswitch_12
    sget-object v0, Lcom/inmobi/ads/ah$a;->t:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 181
    :pswitch_13
    sget-object v0, Lcom/inmobi/ads/ah$a;->v:Lcom/inmobi/ads/ah$a;

    goto/16 :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        -0x61aea3b8 -> :sswitch_9
        -0x4fbdabf6 -> :sswitch_a
        -0x37b237d3 -> :sswitch_12
        -0x321793ce -> :sswitch_10
        -0x23bacec7 -> :sswitch_b
        -0x10fa53b6 -> :sswitch_0
        -0xa609e89 -> :sswitch_2
        -0x2bc4d3f -> :sswitch_14
        0x32c4e6 -> :sswitch_1
        0x335219 -> :sswitch_f
        0x5a5c588 -> :sswitch_6
        0x5c4d208 -> :sswitch_13
        0x65825f6 -> :sswitch_11
        0x68ac462 -> :sswitch_7
        0x68f7bbb -> :sswitch_d
        0x6cac379 -> :sswitch_e
        0x151e1cc4 -> :sswitch_4
        0x21644853 -> :sswitch_8
        0x34afd255 -> :sswitch_5
        0x69fcaef4 -> :sswitch_c
        0x7e026e29 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method static a(Lorg/json/JSONObject;)Lcom/inmobi/ads/ah;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    :try_start_0
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/ah;->b(Ljava/lang/String;)Lcom/inmobi/ads/ah$b;

    .line 105
    const-string v0, "eventType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/ah;->a(Ljava/lang/String;)Lcom/inmobi/ads/ah$a;

    move-result-object v1

    .line 106
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    const-string v0, "eventId"

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 109
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 110
    new-instance v0, Lcom/inmobi/ads/ah;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/inmobi/ads/ah;-><init>(Ljava/lang/String;ILcom/inmobi/ads/ah$a;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ah;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error building tracker from JSONObject; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 113
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/inmobi/ads/ah$a;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    invoke-virtual {p0}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 203
    const-string v0, "unknown"

    .line 243
    :goto_0
    return-object v0

    .line 205
    :pswitch_0
    const-string v0, "load"

    goto :goto_0

    .line 207
    :pswitch_1
    const-string v0, "client_fill"

    goto :goto_0

    .line 209
    :pswitch_2
    const-string v0, "Impression"

    goto :goto_0

    .line 211
    :pswitch_3
    const-string v0, "VideoImpression"

    goto :goto_0

    .line 213
    :pswitch_4
    const-string v0, "page_view"

    goto :goto_0

    .line 215
    :pswitch_5
    const-string v0, "click"

    goto :goto_0

    .line 217
    :pswitch_6
    const-string v0, "start"

    goto :goto_0

    .line 219
    :pswitch_7
    const-string v0, "firstQuartile"

    goto :goto_0

    .line 221
    :pswitch_8
    const-string v0, "midpoint"

    goto :goto_0

    .line 223
    :pswitch_9
    const-string v0, "thirdQuartile"

    goto :goto_0

    .line 225
    :pswitch_a
    const-string v0, "complete"

    goto :goto_0

    .line 227
    :pswitch_b
    const-string v0, "creativeView"

    goto :goto_0

    .line 229
    :pswitch_c
    const-string v0, "fullscreen"

    goto :goto_0

    .line 231
    :pswitch_d
    const-string v0, "exitFullscreen"

    goto :goto_0

    .line 233
    :pswitch_e
    const-string v0, "mute"

    goto :goto_0

    .line 235
    :pswitch_f
    const-string v0, "unmute"

    goto :goto_0

    .line 237
    :pswitch_10
    const-string v0, "pause"

    goto :goto_0

    .line 239
    :pswitch_11
    const-string v0, "resume"

    goto :goto_0

    .line 241
    :pswitch_12
    const-string v0, "error"

    goto :goto_0

    .line 243
    :pswitch_13
    const-string v0, "IAS_VIEWABILITY"

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private static a(Lcom/inmobi/ads/ah$b;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/inmobi/ads/ah$1;->a:[I

    invoke-virtual {p0}, Lcom/inmobi/ads/ah$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 189
    const-string v0, "unknown"

    .line 195
    :goto_0
    return-object v0

    .line 191
    :pswitch_0
    const-string v0, "url_ping"

    goto :goto_0

    .line 193
    :pswitch_1
    const-string v0, "html_script"

    goto :goto_0

    .line 195
    :pswitch_2
    const-string v0, "webview_ping"

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)Lcom/inmobi/ads/ah$b;
    .locals 3

    .prologue
    .line 120
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    sget-object v0, Lcom/inmobi/ads/ah$b;->a:Lcom/inmobi/ads/ah$b;

    .line 132
    :goto_0
    return-object v0

    .line 123
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 126
    sget-object v0, Lcom/inmobi/ads/ah$b;->a:Lcom/inmobi/ads/ah$b;

    goto :goto_0

    .line 123
    :sswitch_0
    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "url_ping"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "html_script"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "webview_ping"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    .line 128
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/ah$b;->b:Lcom/inmobi/ads/ah$b;

    goto :goto_0

    .line 130
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/ah$b;->d:Lcom/inmobi/ads/ah$b;

    goto :goto_0

    .line 132
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/ah$b;->c:Lcom/inmobi/ads/ah$b;

    goto :goto_0

    .line 123
    :sswitch_data_0
    .sparse-switch
        -0x72582021 -> :sswitch_2
        -0x39d57dbe -> :sswitch_1
        -0x10fa53b6 -> :sswitch_0
        0x782791f8 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/inmobi/ads/ah;->g:Ljava/util/Map;

    return-object v0
.end method

.method a(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/inmobi/ads/ah;->g:Ljava/util/Map;

    .line 94
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/inmobi/ads/ah;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    iput-object p1, p0, Lcom/inmobi/ads/ah;->f:Ljava/util/Map;

    .line 297
    return-void
.end method

.method public c()Lcom/inmobi/ads/ah$a;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/inmobi/ads/ah;->e:Lcom/inmobi/ads/ah$a;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/inmobi/ads/ah;->f:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 255
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 257
    :try_start_0
    const-string v0, "type"

    iget-object v2, p0, Lcom/inmobi/ads/ah;->b:Lcom/inmobi/ads/ah$b;

    invoke-static {v2}, Lcom/inmobi/ads/ah;->a(Lcom/inmobi/ads/ah$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v0, "url"

    iget-object v2, p0, Lcom/inmobi/ads/ah;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v0, "eventType"

    iget-object v2, p0, Lcom/inmobi/ads/ah;->e:Lcom/inmobi/ads/ah$a;

    invoke-static {v2}, Lcom/inmobi/ads/ah;->a(Lcom/inmobi/ads/ah$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v0, "eventId"

    iget v2, p0, Lcom/inmobi/ads/ah;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    const-string v2, "extras"

    iget-object v0, p0, Lcom/inmobi/ads/ah;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v3, ","

    .line 263
    invoke-static {v0, v3}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 261
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/ah;->f:Ljava/util/Map;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ah;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error serializing an "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/inmobi/ads/ah;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instance ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 268
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 270
    const-string v0, ""

    goto :goto_1
.end method
