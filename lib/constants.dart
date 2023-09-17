const padding = 20.0;

const website = 'https://github.com/soumyaDghosh';

const telegram = 'https://telegram.me/soumyatheman';

const avatar = 'https://i.imgur.com/zgynPjC.jpg';

const gitlab = 'https://gitlab.com/soumyaDghosh';

const discord = 'https://discord.com/users/soumyaDghosh';

const Bharat = 'https://www.mea.gov.in/Images/pdf1/Part1.pdf';

final snaps = <String, (String, String)>{
  'https://snapcraft.io/webcord': (
    'Webcord',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/08/webcord.png'
  ),
  'https://snapcraft.io/ffmpeg-2204': (
    'ffmpeg-2204',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/07/729418.png'
  ),
  'https://snapcraft.io/saber': (
    'Saber',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/02/saber.png'
  ),
  'https://snapcraft.io/symbolic-preview': (
    'Symbolic Preview',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/06/org.gnome.design.SymbolicPreview.svg.png'
  ),
  'https://snapcraft.io/iplan': (
    'IPlan',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/06/ir.imansalmani.IPlan.png'
  ),
  'https://snapcraft.io/marker': (
    'Marker',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/06/com.github.fabiocolacio.marker.svg.png'
  ),
  'https://snapcraft.io/obfuscate': (
    'Obfuscate',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/04/icon.svg.png'
  ),
  'https://snapcraft.io/rnote': (
    'Rnote',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/04/icon.svg_CnHi5Nd.png'
  ),
  'https://snapcraft.io/dialect': (
    'Dialect',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/03/app.drey.Dialect.svg.png'
  ),
  'https://snapcraft.io/paper': (
    'Paper',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/03/io.posidon.Paper.svg.png'
  ),
  'https://snapcraft.io/bavarder': (
    'Bavarder',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/06/io.github.Bavarder.Bavarder.svg.png'
  ),
  'https://snapcraft.io/newsflash': (
    'NewsFlash',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/05/com.gitlab.newsflash.svg.png'
  ),
  'https://snapcraft.io/pdfarranger': (
    'PDF Arranger',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/06/com.github.jeromerobert.pdfarranger.svg.png'
  ),
  'https://snapcraft.io/monophony': (
    'Monophony',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/08/scalable.svg.png'
  ),

  'https://snapcraft.io/cozy': (
    'Cozy',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/05/icon.svg_FMJ9J5T.png'
  ),
  'https://snapcraft.io/mousam': (
    'Weather',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/06/io.github.amit9838.weather.png'
  ),
  'https://snapcraft.io/read-it-later': (
    'Read It Later',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/06/com.belmoussaoui.ReadItLater.png'
  ),
  'https://snapcraft.io/mousai': (
    'Mousai',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/06/io.github.seadve.Mousai.svg.png'
  ),
  'https://snapcraft.io/plots': (
    'Plots',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/04/icon.svg_Zs7tPXO.png'
  ),
  'https://snapcraft.io/metadata-cleaner': (
    'Metadata Cleaner',
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2023/04/icon.svg_NcsynNC.png'
  ),
  // '': ('',''),
};
