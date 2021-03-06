.diet = new.env()
data(diet, envir=.diet)

#' @title SquamataBase
#'
#' @description A database of prey items in diet samples from the world's snakes
#'
#' @section Compilation methods:
#' I compiled SquamataBase from numerous articles published in scientific
#' journals. I located material both through the use of keyword queries in
#' academic search engines and by systematic review of table of contents
#' for well-known herpetological journals (e.g. Herpetological Review,
#' Herpetology Notes). I also located additional relevant articles by
#' consulting the references in reviewed articles. My goal was simply to track
#' down as many relevant sources as possible. The current compilation includes
#' data from approximately 1700 different sources but remains incomplete in
#' many ways (e.g., geographically and taxonomically).
#'
#' The majority of observations in the database result from papers describing
#' (1) dissections of fluid preserved museum specimens and (2) direct encounters
#' with snakes in the field that were actively consuming a prey or had
#' recently consumed a prey item that could be regurgitated by forced palpation.
#' Glaudas et al. (2017) have noted that these sources of information can
#' provide different pictures of the prey spectrum for Bitis arietans (Puff Adder).
#'
#' @section Database fields:
#' Each record in the database describes a snake specimen eating or attempting
#' to eat a prey specimen. Note that due to the nature of the published data a
#' "specimen" does not necessarily correspond to a single individual. In all
#' cases, however, a specimen refers to a set of individuals that belong to the
#' same taxon. The following fields are associated with each record:
#' \describe{
#' \item{predator_verbatim}{The scientific name of the predator as reported by
#' the original authors.}
#' \item{predator}{The scientific name the predator according to the 2016
#' Catalogue of Life taxonomy.}
#' \item{predator_rank}{The Linnean rank of the predator. Typically this
#' will be "species" or "infraspecies".}
#' \item{predator_taxon}{A semicolon separated list of the higher taxonomic
#' names that apply to the predator.}
#' \item{predator_count}{The number of individual predator organisms involved
#' in the interaction.}
#' \item{predator_voucher}{A unique identifier for the specimen that is either
#' (1) a bona fide museum voucher number or (2) a randomly generated
#' alphanumeric code. The rationale for this field is that same predator specimen
#' may have eaten multiple prey specimens that carry unique identifying information
#' (e.g. taxonomic identities, distinct ages, etc.), in which case each prey
#' specimen requires its own row, thus necessitating duplication of the predator
#' specimen across rows. Having a unique identifier for the predator specimen
#' allows one to identify the same predator specimen appearing in multiple rows,
#' although this rarely happens due to the tendency of snakes to only have a
#' single prey item in their gut. A caveat needs to be mentioned. In many cases,
#' the results of museum studies are reported in summarized tabular form. For
#' example, a museum study of snake X may report that 12 specimens had eaten
#' 14 individuals of prey Y and that 8 specimens had eaten 8 individuals of prey Z.
#' These data will be represented in SquamataBase as two rows, and each row
#' will have a unique randomly generated predator_voucher. This is because there
#' is no way, without further information, to know whether any of the individuals
#' eating prey Y also ate prey Z.}
#' \item{predator_sex}{The sex of the specimen. Typically only used when the
#' predator_count field is 1.}
#' \item{predator_age}{The age of the specimen.Typically only used when the
#' predator_count field is 1.}
#' \item{predator_svl}{The snout-vent-length (in mm) of the specimen. Typically
#' only used when the predator_count field is 1.}
#' \item{predator_tl}{The total length (in mm) of the specimen. Typically
#' only used when the predator_count field is 1.}
#' \item{predator_mass}{The mass (in grams) of the specimen. Typically only
#' used when the predator_count field is 1.}
#' \item{\bold{NOTE}}{All of the above fields with the exception of the svl
#' field are also recorded for the prey specimen, and hence take the prefix
#' "prey". Additionally, the following field is unique to the prey specimen:}
#' \item{prey_ingested}{The orientation in which the prey specimen was
#' swallowed. Typically only used when the prey_count field is 1.}
#' \item{locality_adm0_name}{The country where the predation event occurred.}
#' \item{locality_adm1_name}{The state where the predation event occurred.}
#' \item{locality_adm2_name}{The county where the predation event occurred.}
#' \item{locality_longitude}{Decimal longitude where the predation event occurred.}
#' \item{locality_latitude}{Decimal latitude where the predation event occurred.}
#' \item{event_basis}{Evidentiary basis for the reported predation event.
#' Typically "direct_observation" or "dissected_gut_contents".}
#' \item{event_setting}{A note indicating whether the predation event was
#' observed in a natural or a captive setting. Almost all records in the
#' database are recorded from natural settings. Observations resulting from
#' dissections of museum specimens are assumed to have occurred in a natural
#' setting.}
#' \item{event_date}{YYYY-MM-DD formatted date when the predation event was
#' observed. If the observation resulted from an examination of gut contents
#' this field is the collection date of the specimen.}
#' \item{event_start}{HH:MM formatted time when the predation event was first
#' noted, measured on a 24 hour clock to avoid AM and PM designations.}
#' \item{event_end}{HH:MM formatted time when the predation event ended,
#' measured on a 24 hour clock to avoid AM and PM designations.}
#' \item{event_outcome}{If the predation event was successful this field takes
#' the value "prey_eaten". This is always the case if the observation is based
#' on dissections of museum specimens. However, for observations based on
#' encounters with snakes in the field other outcomes are possible and the
#' values in this field are self-explanatory (e.g. "predation_interrupted_by_observer").}
#' \item{event_habitat}{A simple habitat descriptor indicating whether the
#' predation occurred in a terrestrial, fossorial, arboreal, or aquatic setting.}
#' \item{event_habitat_verbatim}{Habitat description in the words of the
#' original authors.}
#' \item{event_remark}{Miscellaneous narrative information regarded as
#' potentially relevant.}
#' \item{reference}{Bibliographic citation to the original source of the record.}
#'}
"diet"
