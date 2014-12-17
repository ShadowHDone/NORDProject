﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/About.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    <%: ViewData["Title"] %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <nobr><%: ViewData["Message"] %></nobr>
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">

<!-- Список разделов, в будущем нужно будет автоматизировать -->

<div id="links">
	<div>
		<div class="rightHead">СПИСОК</div>
		<ul>
			<li><a href="#Какова_цель_NORD">Какова цель NORD?</a></li>
			<li><a href="#Участники_NORD">Участники NORD</a></li>
			<li><a href="#Я_тоже_хочу_в_NORD!">Я тоже хочу в NORD!</a></li>
			<li><a href="#Я_хочу_поддержать_NORD!">Я хочу поддержать NORD!</a></li>
			<li><a href="#Я_ищу_помощи_от_NORD!">Я ищу помощи от NORD!</a></li>
		</ul>
	</div>
	<!-- <div class="adlinkofteam">
		<a href="adsOfNord">Реклама на NORD</a>
	</div>
	 -->
</div>

<div id="big">О команде NORD</div>
<div id="cen"><a name="Какова_цель_NORD">Какова цель NORD?</a></div>


<div id="tex">Команда NORD - это группа людей, ценящих восточную культуру, в частности - аниме и мангу. Общая цель команды - 
распространение восточной культуры в русскоязычном обществе и стремление развеять общепринятые заблуждения, 
касаемые творчества восточных стран. Иначе говоря, NORD Team старается убрать "деление" на ярых анимешников, 
абсолютных анимененавистников и остальных "нейтральных" жителей стран, которое произошло в ходе очень быстрого 
наплыва данного рода контента, некоторые жанры которого оказались непривычными для восприятия, вследствие чего 
сложились субъективные мнения, а 
вместе с тем и стереотипы.<br><br>

NORD Team желает, чтобы в русскоязычном обществе аниме, манга и производные стали таким же обычным и привычным 
контентом, как компьютерные игры или западное кино.<br></div>

<div id="cen"><a name="Участники_NORD">Участники NORD</a></div>

<div id="tex">
				1./ 
				<b>Johnny33</b>, лидер команды, войсер, автор новостей и крупных 
				обзоров на аниме*.<br>
				В первую очередь именно он задумал NORD (первой задумкой был 
				видеоблог Anime Street). В итоге стал лидером NORD и именно он 
				следит за работой остальных участников и выходом видеоблога в 
				срок, а также поддерживает NORD на плаву. Является основным 
				голосом NORD.<br>
				<br>
				Человек очень не плохой и ответственный, по характеру во многом 
				отличается от других, также обычно хорошенько думает, прежде чем 
				делает. Из недостатков можно отметить разве что проявляющийся 
				временами пофигизм. Анимешником стал случайно, как и геймером. 
				Сейчас больше интересуется аниме-индустрией, чем игровой, но и 
				за последней успевает. Так же часто посещает аниме фесты.<br>
				<br>
				<br>
				2./ <b>ShadowHD</b>, главный дизайнер, войсер, автор новостей и обзоров 
				на аниме пассивных жанров**.<br>
				Второй человек в команде. Именно с ним Johnny33 когда-то и 
				задумал NORD Anime Street. Благодаря ему NORD выглядит так, как 
				сейчас - ShadowHD отвечает за дизайн сайта, Anime Street и всего 
				остального в NORD. Так же является вторым основным голосом NORD.<br>
				<br>
				Не очень общителен, с признаками социофобии, от чего большую 
				часть жизни провел за монитором. Возможно, не совсем зря. 
				Анимешником стал случайно (как оказалось, любовь к аниме - 
				заводская настройка). По этой причине в первую очередь любит 
				аниме за картинки, а не за сюжетную или боевую сторону, хотя и 
				это не игнорирует. Также игроман, предпочитает синглоплееровские 
				игры мультиплеерным. На анимефесты по собственной воле не ходит, 
				но с 2010 года ежегодно посещает Игромир.<br>
				<br>
				<br>
				/ <b>Evil Мао</b>, переводчик-информатор<br>
				Специализируется на поиске и переводе новостей с английского 
				языка. Проходит испытательный срок.<br>
				<br>
				Очень хорошая и приятная в общении девушка, причем
				единственная девушка в NORD. Так же стоит отметить, что
				Мао одна из самых ответственных людей в команде. Очень
				хочет попробовать себя в качестве работника (в отличии
				от остальных участников). Анимешницей стала по стандартной
				схеме - было достаточно посмотреть Death Note, по рекомендации
				друзей, а там пошло поехало...<br>
				<br>
				<br>
				/ <b>KEKC33RUS</b>, аудиомейкер.<br>
				Первый аудиомейкер команды, которым стал благодаря ShadowHD. 
				Проходит испытательный срок.<br>
				<br>
				Положиться на этого человека сложно. Однако найти еще одного 
				такого задрота 3в1 аниме-игры-учеба еще сложнее. Его высокий 
				уровень задротства часто раздражает ShadowHD и последней 
				заставляет КЕКСа начать делать что-нибудь полезное. Анимешником 
				стал случайно, что, как и задротство в игры, вылилось в 
				задротство аниме. Со стороны очевидно, что между аниме, мангой и 
				играми особой грани не видит, лишь бы было много и долго (хотя 
				бывает опровергает это).<br>
				<br>
				<br>
				/ <b>Bad Santa</b>, видеомейкер.<br>
				В команде до подходящей замены (хотя может и нет). Проходит 
				испытательный срок.<br>
				<br>
				Однозначно нельзя сказать, хороший этот человек или плохой. 
				Положиться на него однозначно можно, но только имея в запасе 
				уйму времени. Собственно, по этой причине ему и не доверяют 
				место главного видеомейкера в Норде. Анимешником стал случайно, 
				благо на кабельном в России Наруто уже вещали. По традиции 
				остальных участников Норда, тоже является поклонником видеоигр, 
				особенно мультиплеерных. Никакие мероприятия, посвященные аниме 
				или играм, не посещает.<br>
				<br>
				<br>
				<br>
				<br>
				<font style="font-size:14px">*в команде NORD каждый может написать обзор о любом аниме, но 
				каждый из обзоров проходит проверку. Обзоры должны быть 
				справедливыми и каждые из них проверяет Johnny33 (по причине 
				того, что озвучивает их). Однако на проекты, которые нравятся 
				лично ему, он может самостоятельно написать рецензию-обзор, а 
				дальше проверять уж некому. Отсюда и разделение на &quot;автора 
				крупных обзоров&quot;.<br><br>
				**В команде NORD едва ли кто-то, кроме ShadowHD, может написать 
				обзор на, например, &quot;Свободу лесбиянкам&quot;, &quot;K-On!&quot;, &quot;Дурни, 
				тесты, аватары&quot; и подобное, причем высказав адекватное мнение. 
				ShadowHD один из тех, кто предпочитает романтику, а так же не 
				лишенные этого (и хорошо нарисованных девчонок) аниме. Люто 
				ненавидит &quot;задродские&quot; аниме, так что для него было придумано 
				разделение на &quot;автора обзоров на аниме пассивных жанров&quot;. Все 
				подобные обзоры иного авторства прежде всего проходят именно 
				через него.</font></div>
<hr>		
<div id="big"><a name="Я_тоже_хочу_в_NORD!">Я тоже хочу в NORD!</a></div>
<div id="tex">
Да, такая возможность есть. NORD с самого своего рождения является
всеобщем проектом для всех, а сейчас он особо нуждается в поддержке.
Сейчас у нас особый дефицит участников и нам требуются:<br><br>

- <b>авторы новостей</b> (авторы новостей обязаны хорошо владеть русским языком и умением донести
необходимую информацию до конечного пользователя так, чтобы тот всё понял с первого раза.
Авторы новостей пишут новостные статьи на сайте, а так же для NORD Anime Street.
Основную информацию они получают от переводчиков-информаторов)<br><br>

- <b>переводчики-информаторы</b> (это, наверное, самая важная и ответственная должность в
NORD. Переводчики-информаторы должны хорошо владеть иностранным языком и оперативно
работать, чтобы находить новости и отправлять их в переведенном виде со ссылкой
на оригинал авторам новостей, которые в дальнейшем будут сами обрабатывать полученную
информацию. В нашем деле особенно ценятся переводчики, знающие Японский язык)<br><br>

- <b>аудиомейкеры</b> (как бы это странно не звучало, но в NORD на этой должности
нет ни одного конкретного лица. Аудиомейкер должен уметь работать над звуком.
Самая главная часть во время работы - прослушивать полученные записи и вырезать
лишние фразы и неудачные фрагменты. Так же аудиомейкер должен следить, чтобы громкость
голоса была одинакова и на звуковой дорожке отсутствовали помехи. Готовые аудиодорожки
аудиомейкер передает видеомейкеру)<br><br>

- <b>видеомейкеры</b> (тут у нас такое же положение, как и с аудиомейкероми. Видеомейкер
должен нарезать видео, накладывать на него саундтрек и звуковую дорожку
и состовлять из этого готовый выпуск NORD Anime Street. Видеомейкер должен
обладать мощьной машиной и высокой пропускной способностью Интернета,
по скольку ему придется работать в крупных редакторах, а так же
загружать и отправлять большое количество контента)<br><br>

Так же в Норде никуда без желания и свободного времени, которые не жалко на него потратить.
Если такое есть, а так же одна из должностей приглянулась, смело можно отправлять анкету
участника на адрес s.shadow.w@list.ru. Образца анкеты нет специально, Вам придется придумать
её самому, а по качеству фурмулировки, креативности и количеству указанных данных
будет сложено первое мнение о Вас. У каждого анкета будет разная и однозначно анкета
автора новостей будет сильно отличаться от анкеты видеомейкера. Если Вам действительно
хочется стать участником NORD Team, отнеситесь к созданию анкеты серьезно.<br><br>

Так же иногда в команду NORD требуются особенные участники. Для таких на сайте
иногда устраиваются конкурсы. Следите за новостями!
</div>
<hr>
<div id="big"><a name="Я_хочу_поддержать_NORD!">Я хочу поддержать NORD!</a></div>
<div id="tex">
Для нас важна любая поддержка. Если Вам нравится NORD и Вы хотите, чтобы он развивался дальше,
чтобы выпуски не прекращались, а новостей было больше, Вы вполне можете поддержать нас материально.
Для этого пока что нужно обращаться к участникам команды (s.shadow.w@list.ru, например). Чуть позже
мы создадим специальные кошельки для Норда, чтобы Вам было удобнее помогать нам!
</div>
<hr>
<div id="big"><a name="Я_ищу_помощи_от_NORD!">Я ищу помощи от NORD!</a></div>
<div id="tex">
Хотите серьезно взяться за какой-либо проект? Собираете собственную команду?
В таком случае команда NORD всегда готова помочь вам! Вы можете обратиться к нам за советом, например,
как собрать хорошую команду или как начать свой проект, либо можете попросить Норд принять участие в Вашем проекте!
Если Вы собираетесь переводить игру и/или озвучивать её, то мы всегда с радостью! Более подробное описание,
как связаться с нами по этому поводу и какие требуются ресурсы, которыми Вы уже должны владеть, прежде чем обращаться к нам,
будут указаны чуть позже.</div>
<div style="width:100%;text-align:right">v.0.901</div>

</asp:Content>
